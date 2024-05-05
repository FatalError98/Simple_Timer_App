import 'package:flutter/material.dart';
import './timer/timer.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Timer',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF3F2F2),
      ),
      home: const TimerPage(),
    );
  }
}
