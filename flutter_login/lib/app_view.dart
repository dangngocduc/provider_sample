import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_login/authentication/bloc/authentication_state.dart';
import 'package:flutter_login/home/view/home_page.dart';
import 'package:flutter_login/login/view/login_page.dart';
import 'package:provider/provider.dart';

import 'splash/view/splash_page.dart';

class AppView extends StatefulWidget {
  static const ROUTE_NAME = 'AppView';
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  static const TAG = 'AppView';
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      home: Consumer<AuthenticationState>(
          builder: (context, value, child) {
            developer.log('build value: ${value.runtimeType}', name: TAG);
            if (value is Authenticated) {
              return HomePage();
            } else if (value is Unauthenticated) {
              return LoginPage();
            } else {
              return SplashPage();
            }
          }
      ),
    );
  }
}
