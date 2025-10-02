import 'package:flutter_riverpod/legacy.dart';

import 'package:permisos_app/presentation/screens/providers/provider.dart';

final permissionsProvider =
    StateNotifierProvider<PermissionsNotifier, PermissionState>((ref) {
  return PermissionsNotifier();
});
