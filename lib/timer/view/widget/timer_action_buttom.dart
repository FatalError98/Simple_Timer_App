import 'package:flutter/material.dart';

class TimerActionButton extends StatelessWidget {
  final Function() action;
  final IconData icon;
  const TimerActionButton(
      {super.key, required this.action, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: action,
      icon: Icon(
        icon,
        size: 35,
      ),
    );
  }
}
