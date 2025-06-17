import 'package:permisos_app/data/data.dart';
import 'package:permisos_app/domain/domain.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:sensors_plus/sensors_plus.dart';

/* final gyroscopeProvider = StreamProvider.autoDispose<GyroscopeCustom>((ref) async* {
  final sourceStream = gyroscopeEventStream().handleError((error){
    ref.read(permissionsProvider.notifier).requestSensorsAccess();
    if (kDebugMode) {
      print('Error en el sensor del giroscópio: $error');
    }
  }).asBroadcastStream();
  await for (final event in sourceStream){
    final x = double.tryParse(event.x.toStringAsFixed(2)) ?? 0.0;
    final y = double.tryParse(event.y.toStringAsFixed(2)) ?? 0.0;
    final z = double.tryParse(event.z.toStringAsFixed(2)) ?? 0.0;
    yield GyroscopeCustom(x, y, z);
  }
}); */


final gyroscopeProvider =
    sensorStreamProvider<GyroscopeCustom, GyroscopeEvent>(
  sensorStreamFunction: gyroscopeEventStream,
  customSensorData: (x, y, z) => GyroscopeCustom(x, y, z),
  sensorName: 'acelerómetro',
  sensorData: (event) => event.toSensorData(),
);
