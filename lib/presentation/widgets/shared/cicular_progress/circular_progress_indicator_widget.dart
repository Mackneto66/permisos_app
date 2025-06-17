import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({
    super.key, this.colors = const [Color(0xFF5EDFFF), Color(0xFF0979AE)],
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds);
        },
        child: const CircularProgressIndicator(
          color: Colors.white,
        ));
  }
}
