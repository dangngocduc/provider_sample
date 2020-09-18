// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  Pure pure() {
    return const Pure();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Success success() {
    return const Success();
  }

// ignore: unused_element
  Error error([String message]) {
    return Error(
      message,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pure(),
    @required Result loading(),
    @required Result success(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pure(),
    Result loading(),
    Result success(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pure(Pure value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pure(Pure value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

abstract class $PureCopyWith<$Res> {
  factory $PureCopyWith(Pure value, $Res Function(Pure) then) =
      _$PureCopyWithImpl<$Res>;
}

class _$PureCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $PureCopyWith<$Res> {
  _$PureCopyWithImpl(Pure _value, $Res Function(Pure) _then)
      : super(_value, (v) => _then(v as Pure));

  @override
  Pure get _value => super._value as Pure;
}

class _$Pure implements Pure {
  const _$Pure();

  @override
  String toString() {
    return 'LoginState.pure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Pure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pure(),
    @required Result loading(),
    @required Result success(),
    @required Result error(String message),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return pure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pure(),
    Result loading(),
    Result success(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pure != null) {
      return pure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pure(Pure value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return pure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pure(Pure value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }
}

abstract class Pure implements LoginState {
  const factory Pure() = _$Pure;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pure(),
    @required Result loading(),
    @required Result success(),
    @required Result error(String message),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pure(),
    Result loading(),
    Result success(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pure(Pure value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pure(Pure value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$Loading;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

class _$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pure(),
    @required Result loading(),
    @required Result success(),
    @required Result error(String message),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pure(),
    Result loading(),
    Result success(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pure(Pure value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pure(Pure value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginState {
  const factory Success() = _$Success;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$Error implements Error {
  const _$Error([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result pure(),
    @required Result loading(),
    @required Result success(),
    @required Result error(String message),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result pure(),
    Result loading(),
    Result success(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result pure(Pure value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(pure != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result pure(Pure value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LoginState {
  const factory Error([String message]) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}
