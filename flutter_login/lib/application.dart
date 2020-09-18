import 'dart:developer' as developer;
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/app_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:user_repository/user_repository.dart';
import 'package:provider/provider.dart';

import 'authentication/bloc/authentication_bloc.dart';
import 'authentication/bloc/authentication_state.dart';

class Application extends StatelessWidget {

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;

  const Application({
    Key key,
    @required this.authenticationRepository,
    @required this.userRepository,
  })  : assert(authenticationRepository != null),
        assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: authenticationRepository,),
        StateNotifierProvider<AuthenticationBloc, AuthenticationState>(
          create: (context) => AuthenticationBloc(
            userRepository: userRepository,
            authenticationRepository: authenticationRepository
          ),
        )
      ],
      child: AppView(),
    );
  }
}



