import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart' as app;
import 'package:flutter_timer/flutter_timer.dart' as app1;
import 'package:flutter_login/flutter_login.dart' as app2;
import 'package:user_repository/user_repository.dart';

void main() {
  /*
  runApp(app2.Application(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
  */
  
  runApp(app.Application());
}

