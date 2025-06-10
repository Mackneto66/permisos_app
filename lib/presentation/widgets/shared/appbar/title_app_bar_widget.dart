import 'package:flutter/material.dart';

class TitleAppBarWidget extends StatelessWidget {
  const TitleAppBarWidget({
    super.key,
    required this.bgColors,
    required this.title,
  });

  final List<Color> bgColors;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: bgColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds);
      },
      child: Text(title,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono',)),
    );
  }
}
