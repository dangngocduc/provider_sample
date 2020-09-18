import 'package:freezed_annotation/freezed_annotation.dart';
part 'timer_state.freezed.dart';

@freezed
abstract class TimerState with _$TimerState {
  const factory TimerState(
      int duration
      ) = TimerStateInitial;
  const factory TimerState.pause(
      int duration
      ) = TimerStatePause;

  const factory TimerState.inProgress(
      int duration
      ) = TimerStateInProgress;

  const factory TimerState.complete() = TimerStateComplete;

}