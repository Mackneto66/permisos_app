import 'package:permisos_app/data/extensions/sensor_events_extensions.dart';
import 'package:permisos_app/domain/domain.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:sensors_plus/sensors_plus.dart';

final accelerometerProvider =
    sensorStreamProvider<AccelerometerCustom, AccelerometerEvent>(
  sensorStreamFunction: accelerometerEventStream,
  customSensorData: (x, y, z) => AccelerometerCustom(x, y, z),
  sensorName: 'acelerómetro',
  sensorData: (event) => event.toSensorData(),
);
