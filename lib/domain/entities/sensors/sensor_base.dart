import 'i_sensor_data.dart';

class SensorBase implements ISensorData {
  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  SensorBase(this.x, this.y, this.z);
  
  @override
  String toString() => '''
    x: $x
    y: $y
    z: $z
  ''';
}