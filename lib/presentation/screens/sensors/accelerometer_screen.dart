import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class AcelerometerScreen extends StatelessWidget {
  const AcelerometerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Acelerómetro'),
      body:Center(child: Text('Acelerómetro')),
    );
  }
}