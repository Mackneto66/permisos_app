import 'package:flutter/material.dart';

class CompassWidget extends StatelessWidget {
  const CompassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Compass',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/quadrant-3.png'),
              Image.asset('assets/images/needle-1.png'),
            ],
          ),
        )
      ],
    );
  }
}
