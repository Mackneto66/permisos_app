import 'package:permisos_app/data/data.dart';
import 'package:permisos_app/domain/domain.dart';
import 'package:permisos_app/presentation/screens/providers/sensors/sensor_provider.dart';
import 'package:sensors_plus/sensors_plus.dart';

final magnetometerProvider =
    sensorStreamProvider<MagnetometerCustom, MagnetometerEvent>(
  sensorStreamFunction: magnetometerEventStream,
  customSensorData: (x, y, z) => MagnetometerCustom(x, y, z),
  sensorName: 'acelerómetro',
  sensorData: (event) => event.toSensorData(),
);
