import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:permisos_app/presentation/screens/providers/provider.dart';

final permissionsProvider = StateNotifierProvider<PermissionsNotifier, PermissionState>((ref) {
  return PermissionsNotifier();
});

