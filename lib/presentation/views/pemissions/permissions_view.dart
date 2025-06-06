import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/core/core.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class PermissionsView extends ConsumerWidget {
  const PermissionsView();

  @override
  Widget build(BuildContext context, ref) {
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
        CheckboxListTile(
          value: permissions.photoLibraryGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestPhotosAccess();
          },
          title: const Text('Galería de imágenes'),
          subtitle: Text('${permissions.photoLibrary}'),
        ),
        CheckboxListTile(
          value: permissions.locationGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestLocationAccess();
          },
          title: const Text('Ubicación'),
          subtitle: Text('${permissions.location}'),
        ),
        CheckboxListTile(
          value: permissions.sensorsGranted,
          onChanged: (_) {
            ref.read(permissionsProvider.notifier).requestSensorsAccess();
          },
          title: const Text('Sensores'),
          subtitle: Text('${permissions.sensors}'),
        ),
      ],
    );
  }
}
