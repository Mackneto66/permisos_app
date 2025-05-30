import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/views/views.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class PermisionsScreen extends StatelessWidget {
  const PermisionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(
        showSettings: false,
        child: const Text('Permisos'),),
      body: const PermissionsView(),
    );
  }
}