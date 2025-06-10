import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IconSettingsWidget extends StatelessWidget {
  const IconSettingsWidget({
    super.key,
    required this.bgColors,
  });

  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: bgColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 32,
          )),
      onPressed: () {
        context.push('/permisos');
      },
    );
  }
}
