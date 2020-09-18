import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/bloc/counter_bloc.dart';
import 'package:flutter_counter/counter/view/counter_view.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

class CounterPage extends StatelessWidget {

  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CounterBloc, Count>(
      create: (context) => CounterBloc(Count(0)),
      child: CounterView(),
    );
  }
}
