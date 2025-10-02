import 'package:flutter_riverpod/legacy.dart';
import 'package:permisos_app/core/core.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:permisos_app/presentation/screens/providers/provider.dart';

class PermissionsNotifier extends StateNotifier<PermissionState> {
  final void Function() _openAppSettingsFunction;

  PermissionsNotifier({void Function()? openAppSettingsFn})
      : _openAppSettingsFunction = openAppSettingsFn ?? openAppSettings,
        super(PermissionState()) {
    checkPermissions();
  }

  Future<void> checkPermissions() async {
    final permissionsArray = await Future.wait([
      Permission.camera.status,
      Permission.photos.status,
      Permission.sensors.status,
      Permission.location.status,
      Permission.locationAlways.status,
      Permission.locationWhenInUse.status
    ]);
    state = state.copyWith(
      camera: permissionsArray[0],
      photoLibrary: permissionsArray[1],
      sensors: permissionsArray[2],
      location: permissionsArray[3],
      locationAlways: permissionsArray[4],
      locationWhenInUse: permissionsArray[5],
    );
  }

  Future<void> requestCameraAccess() async {
    final status = await Permission.camera.request();
    state = state.copyWith(camera: status);
    checkPermanentlyDenied(status);
  }

  Future<void> requestPhotosAccess() async {
    final status = await Permission.photos.request();
    state = state.copyWith(photoLibrary: status);
    checkPermanentlyDenied(status);
  }

  Future<void> requestSensorsAccess() async {
    final status = await Permission.sensors.request();
    state = state.copyWith(sensors: status);
    checkPermanentlyDenied(status);
  }

  Future<void> requestLocationAccess() async {
    final status = await Permission.location.request();
    state = state.copyWith(location: status);
    checkPermanentlyDenied(status);
  }

  Future<void> requestLocationAlwaysAccess() async {
    final status = await Permission.locationAlways.request();
    state = state.copyWith(locationAlways: status);
    checkPermanentlyDenied(status);
  }

  Future<void> requestLocationWhenInUseAccess() async {
    final status = await Permission.locationWhenInUse.request();
    state = state.copyWith(locationWhenInUse: status);
    checkPermanentlyDenied(status);
  }

  void checkPermanentlyDenied(PermissionStatus status) {
    if (status == PermissionStatus.permanentlyDenied) {
      if (state.dialogEvent != DialogEvent.showPermanentlyDeniedDialog) {
        state = state.copyWith(
            dialogEvent: DialogEvent.showPermanentlyDeniedDialog);
      }
    }
  }

  void dialogShow() {
    state = state.copyWith(dialogEvent: DialogEvent.none);
  }

  void openAppSettingsFromUI() {
    _openAppSettingsFunction();
  }
}
