import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class GyroscopeScreen extends StatelessWidget {
  const GyroscopeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(child: const Text('Giróscopio')),
      body: Center(child: Text('Giróscopio')),
    );
  }
}
