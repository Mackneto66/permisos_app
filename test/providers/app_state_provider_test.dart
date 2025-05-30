import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';

void main() {
  group('appStateProvider', () {
    test('should initially be AppLifecycleState.resumed', () {
      final container = ProviderContainer();

      final initialAppState = container.read(appStateProvider);

      expect(initialAppState, AppLifecycleState.resumed);

      container.dispose();
    });

    test('should update its state when updated directly', () {
      final container = ProviderContainer();

      final appStateNotifier = container.read(appStateProvider.notifier);

      appStateNotifier.state = AppLifecycleState.inactive;
      expect(container.read(appStateProvider), AppLifecycleState.inactive);

      appStateNotifier.state = AppLifecycleState.paused;
      expect(container.read(appStateProvider), AppLifecycleState.paused);

      container.dispose();
    });
  });
}
