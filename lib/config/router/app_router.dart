import 'package:go_router/go_router.dart';
import 'package:permisos_app/presentation/screens/screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/permisos',
      builder: (context, state) => const PermisionsScreen(),
    ),
  ],
);
