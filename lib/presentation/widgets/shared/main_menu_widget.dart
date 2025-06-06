import 'package:flutter/material.dart';

class MainMenuWidget extends StatelessWidget {
  const MainMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.lightGreen,
        ),
        Container(
          color: Colors.black54,
        ),
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.lime,
        ),
        Container(
          color: Colors.tealAccent,
        ),
      ],
    );
  }
}
