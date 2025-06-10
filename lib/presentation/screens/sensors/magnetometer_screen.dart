import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class MagnetometerScreen extends StatelessWidget {
  const MagnetometerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Magnetómetro'),
      body: Center(child: Text('Magnetómetro')),
    );
  }
}
