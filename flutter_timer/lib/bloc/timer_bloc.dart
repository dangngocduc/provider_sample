import 'dart:async';
import 'dart:developer' as developer;
import 'package:state_notifier/state_notifier.dart';

import '../ticker.dart';
import 'timer_state.dart';

class TimerBloc extends StateNotifier<TimerState> {
  static const TAG = 'TimerBloc';
  static const int _duration = 60;

  final Ticker _ticker;

  TimerBloc(this._ticker) : super(const TimerState(_duration));

  StreamSubscription<int> _tickerSubscription;

  void timerStarted(int duration) {
    state = TimerState.inProgress(duration);
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: duration)
        .listen((duration) {
          timerTicked(duration);
    });
  }

  void timerPaused() {
    if (state is TimerStateInProgress) {
      _tickerSubscription?.pause();
      state = TimerState.pause((state as TimerStateInProgress).duration);
    }
  }

  void timerResumed() {
    if (state is TimerStatePause) {
      _tickerSubscription?.resume();
      state = TimerState.inProgress((state as TimerStatePause).duration);
    }
  }

  void timerReset() {
    _tickerSubscription?.cancel();
    state = const TimerState(_duration);
  }

  void timerTicked(int duration) {
    if (duration > 0) {
      state = TimerState.inProgress(duration);
    } else {
      state = const TimerState.complete();
    }
  }

}