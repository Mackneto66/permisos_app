import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/sensor/ball_widget.dart';

class MovingBallWidget extends StatelessWidget {
  final double x, y;
  final TextTheme theme;
  const MovingBallWidget(
      {super.key, required this.x, required this.y, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      AnimatedAlign(
        alignment: Alignment(y.clamp(-1.0, 1.0), x.clamp(-1.0, 1.0)),
        duration: Durations.medium2,
        curve: Easing.legacyAccelerate,
        child: BallWidget(),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 70),
        child: Text(
          '''
          x: $x
          y: $y
        ''',
          style: theme.titleLarge!.copyWith(fontSize: 30),
        ),
      ),
    ]);
  }
}
