import 'dart:developer' as developer;

import 'package:state_notifier/state_notifier.dart';

class CounterBloc extends StateNotifier<Count> with LocatorMixin {
  static const TAG = 'CounterBloc';

  CounterBloc(Count state) : super(state);

  void increment() {
    state = Count(state.value + 1);
  }

  void decrement() {
    state = Count(state.value - 1);
  }
}

class Count {

  int value;

  Count(this.value);
}