import 'package:flutter/material.dart';

import './widget/action.dart';
import 'widget/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerText(),
            SizedBox(
              height: 75,
            ),
            TimerActions(),
          ],
        ),
      )),
    );
  }
}
