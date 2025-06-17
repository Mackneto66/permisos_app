import 'package:permisos_app/domain/domain.dart';
import 'package:sensors_plus/sensors_plus.dart';

extension GyroscopeEventPosition on GyroscopeEvent {
  SensorData toSensorData() => (x: x, y: y, z: z);
}

extension AccelerometerEventPosition on AccelerometerEvent {
  SensorData toSensorData() => (x: x, y: y, z: z);
}