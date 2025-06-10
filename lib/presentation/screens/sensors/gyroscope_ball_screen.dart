import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class GyroscopeBallScreen extends StatelessWidget {
  const GyroscopeBallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(child: const Text('Giróscopio ball')),
      body: Center(child: Text('Giróscopio ball')),
    );
  }
}
