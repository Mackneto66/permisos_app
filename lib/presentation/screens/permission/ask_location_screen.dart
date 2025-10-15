import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/permissions/permissions_provider.dart';

class AskLocationScreen extends ConsumerWidget {
  const AskLocationScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permiso Requerido'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () async {
            await ref
                .read(permissionsProvider.notifier)
                .requestLocationAccess();
          },
          child: Text('Solicitar Permiso'),
        ),
      ),
    );
  }
}
