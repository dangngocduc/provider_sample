// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TimerStateTearOff {
  const _$TimerStateTearOff();

// ignore: unused_element
  TimerStateInitial call(int duration) {
    return TimerStateInitial(
      duration,
    );
  }

// ignore: unused_element
  TimerStatePause pause(int duration) {
    return TimerStatePause(
      duration,
    );
  }

// ignore: unused_element
  TimerStateInProgress inProgress(int duration) {
    return TimerStateInProgress(
      duration,
    );
  }

// ignore: unused_element
  TimerStateComplete complete() {
    return const TimerStateComplete();
  }
}

// ignore: unused_element
const $TimerState = _$TimerStateTearOff();

mixin _$TimerState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int duration), {
    @required Result pause(int duration),
    @required Result inProgress(int duration),
    @required Result complete(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int duration), {
    Result pause(int duration),
    Result inProgress(int duration),
    Result complete(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimerStateInitial value), {
    @required Result pause(TimerStatePause value),
    @required Result inProgress(TimerStateInProgress value),
    @required Result complete(TimerStateComplete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimerStateInitial value), {
    Result pause(TimerStatePause value),
    Result inProgress(TimerStateInProgress value),
    Result complete(TimerStateComplete value),
    @required Result orElse(),
  });
}

abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
}

class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;
}

abstract class $TimerStateInitialCopyWith<$Res> {
  factory $TimerStateInitialCopyWith(
          TimerStateInitial value, $Res Function(TimerStateInitial) then) =
      _$TimerStateInitialCopyWithImpl<$Res>;
  $Res call({int duration});
}

class _$TimerStateInitialCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateInitialCopyWith<$Res> {
  _$TimerStateInitialCopyWithImpl(
      TimerStateInitial _value, $Res Function(TimerStateInitial) _then)
      : super(_value, (v) => _then(v as TimerStateInitial));

  @override
  TimerStateInitial get _value => super._value as TimerStateInitial;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(TimerStateInitial(
      duration == freezed ? _value.duration : duration as int,
    ));
  }
}

class _$TimerStateInitial implements TimerStateInitial {
  const _$TimerStateInitial(this.duration) : assert(duration != null);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerState(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerStateInitial &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  $TimerStateInitialCopyWith<TimerStateInitial> get copyWith =>
      _$TimerStateInitialCopyWithImpl<TimerStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int duration), {
    @required Result pause(int duration),
    @required Result inProgress(int duration),
    @required Result complete(),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return $default(duration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int duration), {
    Result pause(int duration),
    Result inProgress(int duration),
    Result complete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimerStateInitial value), {
    @required Result pause(TimerStatePause value),
    @required Result inProgress(TimerStateInProgress value),
    @required Result complete(TimerStateComplete value),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimerStateInitial value), {
    Result pause(TimerStatePause value),
    Result inProgress(TimerStateInProgress value),
    Result complete(TimerStateComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TimerStateInitial implements TimerState {
  const factory TimerStateInitial(int duration) = _$TimerStateInitial;

  int get duration;
  $TimerStateInitialCopyWith<TimerStateInitial> get copyWith;
}

abstract class $TimerStatePauseCopyWith<$Res> {
  factory $TimerStatePauseCopyWith(
          TimerStatePause value, $Res Function(TimerStatePause) then) =
      _$TimerStatePauseCopyWithImpl<$Res>;
  $Res call({int duration});
}

class _$TimerStatePauseCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStatePauseCopyWith<$Res> {
  _$TimerStatePauseCopyWithImpl(
      TimerStatePause _value, $Res Function(TimerStatePause) _then)
      : super(_value, (v) => _then(v as TimerStatePause));

  @override
  TimerStatePause get _value => super._value as TimerStatePause;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(TimerStatePause(
      duration == freezed ? _value.duration : duration as int,
    ));
  }
}

class _$TimerStatePause implements TimerStatePause {
  const _$TimerStatePause(this.duration) : assert(duration != null);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerState.pause(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerStatePause &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  $TimerStatePauseCopyWith<TimerStatePause> get copyWith =>
      _$TimerStatePauseCopyWithImpl<TimerStatePause>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int duration), {
    @required Result pause(int duration),
    @required Result inProgress(int duration),
    @required Result complete(),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return pause(duration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int duration), {
    Result pause(int duration),
    Result inProgress(int duration),
    Result complete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimerStateInitial value), {
    @required Result pause(TimerStatePause value),
    @required Result inProgress(TimerStateInProgress value),
    @required Result complete(TimerStateComplete value),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return pause(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimerStateInitial value), {
    Result pause(TimerStatePause value),
    Result inProgress(TimerStateInProgress value),
    Result complete(TimerStateComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class TimerStatePause implements TimerState {
  const factory TimerStatePause(int duration) = _$TimerStatePause;

  int get duration;
  $TimerStatePauseCopyWith<TimerStatePause> get copyWith;
}

abstract class $TimerStateInProgressCopyWith<$Res> {
  factory $TimerStateInProgressCopyWith(TimerStateInProgress value,
          $Res Function(TimerStateInProgress) then) =
      _$TimerStateInProgressCopyWithImpl<$Res>;
  $Res call({int duration});
}

class _$TimerStateInProgressCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateInProgressCopyWith<$Res> {
  _$TimerStateInProgressCopyWithImpl(
      TimerStateInProgress _value, $Res Function(TimerStateInProgress) _then)
      : super(_value, (v) => _then(v as TimerStateInProgress));

  @override
  TimerStateInProgress get _value => super._value as TimerStateInProgress;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(TimerStateInProgress(
      duration == freezed ? _value.duration : duration as int,
    ));
  }
}

class _$TimerStateInProgress implements TimerStateInProgress {
  const _$TimerStateInProgress(this.duration) : assert(duration != null);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerState.inProgress(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimerStateInProgress &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  $TimerStateInProgressCopyWith<TimerStateInProgress> get copyWith =>
      _$TimerStateInProgressCopyWithImpl<TimerStateInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int duration), {
    @required Result pause(int duration),
    @required Result inProgress(int duration),
    @required Result complete(),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return inProgress(duration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int duration), {
    Result pause(int duration),
    Result inProgress(int duration),
    Result complete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimerStateInitial value), {
    @required Result pause(TimerStatePause value),
    @required Result inProgress(TimerStateInProgress value),
    @required Result complete(TimerStateComplete value),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimerStateInitial value), {
    Result pause(TimerStatePause value),
    Result inProgress(TimerStateInProgress value),
    Result complete(TimerStateComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class TimerStateInProgress implements TimerState {
  const factory TimerStateInProgress(int duration) = _$TimerStateInProgress;

  int get duration;
  $TimerStateInProgressCopyWith<TimerStateInProgress> get copyWith;
}

abstract class $TimerStateCompleteCopyWith<$Res> {
  factory $TimerStateCompleteCopyWith(
          TimerStateComplete value, $Res Function(TimerStateComplete) then) =
      _$TimerStateCompleteCopyWithImpl<$Res>;
}

class _$TimerStateCompleteCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateCompleteCopyWith<$Res> {
  _$TimerStateCompleteCopyWithImpl(
      TimerStateComplete _value, $Res Function(TimerStateComplete) _then)
      : super(_value, (v) => _then(v as TimerStateComplete));

  @override
  TimerStateComplete get _value => super._value as TimerStateComplete;
}

class _$TimerStateComplete implements TimerStateComplete {
  const _$TimerStateComplete();

  @override
  String toString() {
    return 'TimerState.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TimerStateComplete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(int duration), {
    @required Result pause(int duration),
    @required Result inProgress(int duration),
    @required Result complete(),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return complete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(int duration), {
    Result pause(int duration),
    Result inProgress(int duration),
    Result complete(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TimerStateInitial value), {
    @required Result pause(TimerStatePause value),
    @required Result inProgress(TimerStateInProgress value),
    @required Result complete(TimerStateComplete value),
  }) {
    assert($default != null);
    assert(pause != null);
    assert(inProgress != null);
    assert(complete != null);
    return complete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TimerStateInitial value), {
    Result pause(TimerStatePause value),
    Result inProgress(TimerStateInProgress value),
    Result complete(TimerStateComplete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class TimerStateComplete implements TimerState {
  const factory TimerStateComplete() = _$TimerStateComplete;
}
