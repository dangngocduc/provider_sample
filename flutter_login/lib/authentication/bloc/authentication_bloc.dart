import 'dart:async';
import 'dart:developer' as developer;

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:user_repository/user_repository.dart';

import 'authentication_state.dart';

class AuthenticationBloc extends StateNotifier<AuthenticationState>{
  static const TAG = 'AuthenticationBloc';

  AuthenticationBloc({
    @required AuthenticationRepository authenticationRepository,
    @required UserRepository userRepository,
    }) :_authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const AuthenticationState.unauthenticated()) {
    _authenticationStatusSubscription = _authenticationRepository.status.listen((event) {
      authenticationStatusChanged(event);
    });


  }
  StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;


  Future authenticationStatusChanged(AuthenticationStatus status) async {

    switch (status) {
      case AuthenticationStatus.unauthenticated:
        state = const AuthenticationState.unauthenticated();
        break;
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        developer.log('authenticationStatusChanged user: $user', name: TAG);
        state = user != null
            ? AuthenticationState.authenticated(user)
            : const AuthenticationState.unauthenticated();
        return;
      default:
        return const AuthenticationState.unknown();
    }
  }

  Future<User> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } on Exception {
      return null;
    }
  }

  void logout() {
    _authenticationRepository.logOut();
  }

  @override
  void dispose() {
    _authenticationStatusSubscription?.cancel();
    _authenticationRepository.dispose();
    super.dispose();
  }
}