import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';
part 'authentication_state.freezed.dart';


@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = Unknown;
  const factory AuthenticationState.authenticated(User user) = Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}