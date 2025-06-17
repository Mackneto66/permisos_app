import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/domain/domain.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';

AutoDisposeStreamProvider<T> sensorStreamProvider<T extends ISensorData, S>({
  required Stream<S> Function() sensorStreamFunction,
  required T Function(double x, double y, double z) customSensorData,
  required String sensorName,
  required SensorData Function(S event) sensorData,
}) {
  return StreamProvider.autoDispose<T>((ref) async* {
    final sourceStream = sensorStreamFunction().handleError((error) {
      ref.read(permissionsProvider.notifier).requestSensorsAccess();
      if (kDebugMode) {
        print('Error en el sensor $sensorName: $error');
      }
    }).asBroadcastStream();

    await for (final event in sourceStream) {
      final SensorData typedEvent = sensorData(event);
      final x = double.tryParse(typedEvent.x.toStringAsFixed(2)) ?? 0.0;
      final y = double.tryParse(typedEvent.y.toStringAsFixed(2)) ?? 0.0;
      final z = double.tryParse(typedEvent.z.toStringAsFixed(2)) ?? 0.0;
      yield customSensorData(x, y, z);
      
    }
  });
}
