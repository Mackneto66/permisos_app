import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/screens.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class CompassScreen extends ConsumerWidget {
  const CompassScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final locationGranted = ref.watch(permissionsProvider).locationGranted;
    if (!locationGranted) {
      return AskLocationScreen();
    }
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBarCustomWidget(title: 'Brújula'),
      body: Center(child: CompassWidget()),
    );
  }
}
