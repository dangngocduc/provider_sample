import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.pure() = Pure;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success() = Success;
  const factory LoginState.error([String message]) = Error;
}