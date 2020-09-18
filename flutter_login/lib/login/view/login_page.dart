import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_login/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<LoginBloc, LoginState>(
      create: (context) => LoginBloc(authenticationRepository: context.read<AuthenticationRepository>()),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Login')),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: LoginForm(),
          ),
        );
      },
    );
  }
}
