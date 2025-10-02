import 'package:permisos_app/core/core.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionState {
  final PermissionStatus camera;
  final PermissionStatus photoLibrary;
  final PermissionStatus sensors;
  final PermissionStatus location;
  final PermissionStatus locationAlways;
  final PermissionStatus locationWhenInUse;
  final DialogEvent dialogEvent;

  PermissionState({
    this.camera = PermissionStatus.denied,
    this.photoLibrary = PermissionStatus.denied,
    this.sensors = PermissionStatus.denied,
    this.location = PermissionStatus.denied,
    this.locationAlways = PermissionStatus.denied,
    this.locationWhenInUse = PermissionStatus.denied,
    this.dialogEvent = DialogEvent.none,
  });

  PermissionState copyWith({
    PermissionStatus? camera,
    PermissionStatus? photoLibrary,
    PermissionStatus? sensors,
    PermissionStatus? location,
    PermissionStatus? locationAlways,
    PermissionStatus? locationWhenInUse,
    DialogEvent? dialogEvent,
  }) =>
      PermissionState(
        camera: camera ?? this.camera,
        photoLibrary: photoLibrary ?? this.photoLibrary,
        sensors: sensors ?? this.sensors,
        location: location ?? this.location,
        locationAlways: locationAlways ?? this.locationAlways,
        locationWhenInUse: locationWhenInUse ?? this.locationWhenInUse,
        dialogEvent: dialogEvent ?? this.dialogEvent,
      );

  bool get cameraGranted {
    return camera == PermissionStatus.granted;
  }

  bool get photoLibraryGranted {
    return photoLibrary == PermissionStatus.granted;
  }

  bool get sensorsGranted {
    return sensors == PermissionStatus.granted;
  }

  bool get locationGranted {
    return location == PermissionStatus.granted;
  }

  bool get locationAlwaysGranted {
    return locationAlways == PermissionStatus.granted;
  }

  bool get locationWhenInUseGranted {
    return locationWhenInUse == PermissionStatus.granted;
  }
}
