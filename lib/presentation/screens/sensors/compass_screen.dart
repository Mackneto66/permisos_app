import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class CompassScreen extends StatelessWidget {
  const CompassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Brújula'),
      body: Center(child: Text('Brújula')),
    );
  }
}
