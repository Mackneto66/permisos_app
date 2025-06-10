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
    GoRoute(
      path: '/accelerometer',
      builder: (context, state) => const AcelerometerScreen(),
    ),
    GoRoute(
      path: '/gyroscope_ball',
      builder: (context, state) => const GyroscopeBallScreen(),
    ),
    GoRoute(
      path: '/gyroscope',
      builder: (context, state) => const GyroscopeScreen(),
    ),
    GoRoute(
      path: '/magnetometer',
      builder: (context, state) => const MagnetometerScreen(),
    ),
    GoRoute(
      path: '/compass',
      builder: (context, state) => const CompassScreen(),
    ),
  ],
);
