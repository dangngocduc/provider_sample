import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'bloc/timer_bloc.dart';
import 'bloc/timer_state.dart';
import 'ticker.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(109, 234, 255, 1),
        accentColor: const Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      title: 'Flutter Timer',
      home: StateNotifierProvider<TimerBloc, TimerState>(
        create: (context) => TimerBloc(Ticker()),
        child: Timer(),
      ),
    );
  }
}

class Timer extends StatelessWidget {
  static const TextStyle timerTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final timerState = context.watch<TimerState>();
    final duration = timerState.map<int>(
            (value) => value.duration,
        pause: (value) => value.duration,
        inProgress: (value) => value.duration,
        complete: (value) => 0);
        return Scaffold(
      appBar: AppBar(title: Text('Flutter Timer')),
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: Consumer<TimerState>(
                      builder: (context, timerState, _) {
                        final String minutesStr = ((duration / 60) % 60)
                            .floor()
                            .toString()
                            .padLeft(2, '0');
                        final String secondsStr = (duration % 60)
                            .floor()
                            .toString()
                            .padLeft(2, '0');
                        return Text(
                          '$minutesStr:$secondsStr',
                          style: Timer.timerTextStyle,
                        );
                      }
                  ),
                ),
              ),
              Selector<TimerState, Type>(
                  builder: (context, state, _) => Actions(), 
                  selector: (context, _data) {
                    return _data.runtimeType;
                  },
                  shouldRebuild: (state1, state2) {
                    return state1 != state2;
                  },
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _mapStateToActionButtons(
        timerState: context.watch<TimerState>(),
        timerBloc: context.watch<TimerBloc>()
      ),
    );
  }

  List<Widget> _mapStateToActionButtons({
    TimerBloc timerBloc,
    TimerState timerState,
  }) {
    if (timerState is TimerStateInitial) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () =>
              timerBloc.timerStarted(timerState.duration),
        ),
      ];
    }
    if (timerState is TimerStateInProgress) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.pause),
          onPressed: () =>
              timerBloc.timerPaused(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () =>
              timerBloc.timerReset(),
        ),
      ];
    }
    if (timerState is TimerStatePause) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () =>
              timerBloc.timerResumed(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () =>
              timerBloc.timerReset(),
        ),
      ];
    }
    if (timerState is TimerStateComplete) {
      return [
        FloatingActionButton(
          child: const Icon(Icons.replay),
          onPressed: () =>
              timerBloc.timerReset(),
        ),
      ];
    }
    return [];
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          [
            Color.fromRGBO(72, 74, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(184, 189, 245, 0.7)
          ],
          [
            Color.fromRGBO(72, 74, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(172, 182, 219, 0.7)
          ],
          [
            Color.fromRGBO(72, 73, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(190, 238, 246, 0.7)
          ],
        ],
        durations: [19440, 10800, 6000],
        heightPercentages: [0.03, 0.01, 0.02],
        gradientBegin: Alignment.bottomCenter,
        gradientEnd: Alignment.topCenter,
      ),
      size: Size(double.infinity, double.infinity),
      waveAmplitude: 25,
      backgroundColor: Colors.blue[50],
    );
  }
}
