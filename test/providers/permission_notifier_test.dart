import 'package:flutter_test/flutter_test.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';

void main() {
  /* Test widgets de flutter debe ser inicializados */
  TestWidgetsFlutterBinding.ensureInitialized();
  bool mockOpenAppSettingsCalled = false;
  void fakeOpenAppSettings() {
    mockOpenAppSettingsCalled = true;
  }

  setUp(() {
    mockOpenAppSettingsCalled = false;
  });

  group('PermissionsNotifier - checkPermanentlyDenied', () {
    test(
        'should call openAppSettings when status is PermissionStatus.permanentlyDenied',
        () {
      final permissionNotifier =
          PermissionsNotifier(openAppSettingsFn: fakeOpenAppSettings);

      permissionNotifier.checkPermanentlyDenied(PermissionStatus.permanentlyDenied);
      expect(mockOpenAppSettingsCalled, isTrue,
          reason:
              'openAppSettings should be called when status is permanentlyDenied');
    });

    test(
        'should NOT call openAppSettings when status is NOT PermissionStatus.permanentlyDenied',
        () {
      final permissionNotifier =
          PermissionsNotifier(openAppSettingsFn: fakeOpenAppSettings);

      permissionNotifier.checkPermanentlyDenied(PermissionStatus.granted);
      expect(mockOpenAppSettingsCalled, isFalse,
          reason:
              'openAppSettings should NOT be called when status is granted');

      permissionNotifier.checkPermanentlyDenied(PermissionStatus.denied);
      expect(mockOpenAppSettingsCalled, isFalse,
          reason: 'openAppSettings should NOT be called when status is denied');
    });
  });
}
