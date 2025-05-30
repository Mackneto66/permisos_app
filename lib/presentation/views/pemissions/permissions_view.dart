import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class PermissionsView extends ConsumerWidget {
  const PermissionsView();

  @override
  Widget build(BuildContext context, ref) {
    final appState = ref.watch(appStateProvider);
    final permissions = ref.watch(permissionsProvider);
    final permissionsNotifier = ref.read(permissionsProvider.notifier);

    ref.listen<PermissionState>(permissionsProvider, (previus, next) {
      if (next.dialogEvent == DialogEvent.showPermanentlyDeniedDialog
          && previus?.dialogEvent != DialogEvent.showPermanentlyDeniedDialog) {
        AlertDialogWidget.show(context, () {
          permissionsNotifier.openAppSettingsFromUI();
        }).then((_) {
          permissionsNotifier.dialogShow();
        });
      }
    });
    return ListView(
      children: [
        CheckboxListTile(
          value: permissions.cameraGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestCameraAccess();
          },
          title: const Text('Cámara'),
          subtitle: Text('${permissions.camera}'),
        ),
        ListTile(
          title: const Text('Estado de la app'),
          subtitle: Text(appState.name),
        )
      ],
    );
  }
}
