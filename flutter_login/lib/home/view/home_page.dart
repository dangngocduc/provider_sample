import 'package:flutter/material.dart';
import 'package:flutter_login/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_login/authentication/bloc/authentication_state.dart';
import 'package:provider/provider.dart';
import 'package:user_repository/user_repository.dart';
class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'UserID: ${context.watch<AuthenticationState>()
                  .map<User>(
                  unknown: (value) => null,
                  authenticated: (value) => value.user,
                  unauthenticated: (value) => null)
                  .id}',
            ),
            RaisedButton(
              child: const Text('Logout'),
              onPressed: () {
                context.read<AuthenticationBloc>().logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
