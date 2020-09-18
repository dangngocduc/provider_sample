import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:user_repository/user_repository.dart';
import 'application.dart';
void main() {
  runApp(Application(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}
