import 'package:flutter/material.dart';
import 'package:flutter_login/login/bloc/login_bloc.dart';
import 'package:flutter_login/login/login.dart';
import 'package:provider/provider.dart';
import '../login.dart';
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  static const TAG = 'LoginForm';
  final _formKey = GlobalKey<FormState>();
  String _username;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                key: const Key('loginForm_usernameInput_textField'),
                decoration: const InputDecoration(
                    labelText: 'username',
                    filled: true
                ),
                autovalidate: true,
                validator: (value) {
                  if (Username.validator(value) != null) {
                    return 'invalid username';
                  }
                  return null;
                },
                onSaved: (value) {
                  _username = value;
                },
              ),
              const Padding(padding: EdgeInsets.all(12)),
              TextFormField(
                key: const Key('loginForm_passwordInput_textField'),
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'password',
                    filled: true
                ),
                autovalidate: true,
                onSaved: (value) {
                  _password = value;
                },
                validator: (value) {
                  if (Password.validator(value) != null) {
                    return 'invalid password';
                  }
                  return null;
                },
              ),
              const Padding(padding: EdgeInsets.all(12)),
              Consumer<LoginState>(
                  builder: (context, state, _) {
                    return state is Loading
                        ? const CircularProgressIndicator()
                        :
                    FlatButton(
                      key: const Key('loginForm_continue_raisedButton'),
                      child: const Text('Login'),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          context.read<LoginBloc>().login(_username, _password);
                        }
                      },
                      shape: const StadiumBorder(),
                      textColor: Theme.of(context).colorScheme.onSecondary,
                      color: Theme.of(context).colorScheme.secondary,
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
