import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_counter/counter/view/counter_page.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const CounterPage(),
    );
  }
}
