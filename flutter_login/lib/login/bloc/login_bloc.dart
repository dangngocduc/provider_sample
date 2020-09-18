import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_login/login/login.dart';
import 'package:meta/meta.dart';
import 'package:state_notifier/state_notifier.dart';

import 'login_state.dart';
class LoginBloc extends StateNotifier<LoginState> {
  LoginBloc({
    @required AuthenticationRepository authenticationRepository,
  })  : assert(authenticationRepository != null),
        _authenticationRepository = authenticationRepository,
        super(const LoginState.pure());

  final AuthenticationRepository _authenticationRepository;

  void login(String username, String password) {
    state = const LoginState.loading();
    _authenticationRepository.logIn(username: username, password: password);
  }

}
