import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/timer_bloc.dart';
import 'timer_action_buttom.dart';

class TimerActions extends StatelessWidget {
  const TimerActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...switch (state) {
              TimerInitial() => [
                  TimerActionButton(
                    action: () => context
                        .read<TimerBloc>()
                        .add(TimerStarted(duration: state.duration)),
                    icon: Icons.play_arrow,
                  ),
                ],
              TimerRunInProgress() => [
                  TimerActionButton(
                    action: () =>
                        context.read<TimerBloc>().add(const TimerPaused()),
                    icon: Icons.pause,
                  ),
                  TimerActionButton(
                    action: () =>
                        context.read<TimerBloc>().add(const TimerReset()),
                    icon: Icons.replay,
                  ),
                ],
              TimerRunPause() => [
                  TimerActionButton(
                    action: () =>
                        context.read<TimerBloc>().add(const TimerResumed()),
                    icon: Icons.play_arrow,
                  ),
                  TimerActionButton(
                    action: () =>
                        context.read<TimerBloc>().add(const TimerReset()),
                    icon: Icons.replay,
                  ),
                ],
              TimerRunComplete() => [
                  TimerActionButton(
                    action: () =>
                        context.read<TimerBloc>().add(const TimerReset()),
                    icon: Icons.replay,
                  ),
                ]
            }
          ],
        );
      },
    );
  }
}
