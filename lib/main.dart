import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/config/config.dart';
import 'package:permisos_app/presentation/screens/providers/app_state/app_state_provider.dart';
import 'package:permisos_app/presentation/screens/providers/permissions/permissions_provider.dart';

void main() {
  /* Componenetes de flutter debe ser inicializados */
  WidgetsFlutterBinding.ensureInitialized();
  /* Bloquear la orientacion de la pantalla */
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

/* WidgetsBindingObserver => para poder observar la instacia de la app */
class MainAppState extends ConsumerState<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    /* Añadir el observador al estado del widget principal */
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    /* Remover el observador al estado del widget principal */
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (kDebugMode) {
      print('State: $state');
    }
    ref.read(appStateProvider.notifier).state = state;
    if (state == AppLifecycleState.resumed) {
      ref.read(permissionsProvider.notifier).checkPermissions();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      routerConfig: router,
    );
  }
}
