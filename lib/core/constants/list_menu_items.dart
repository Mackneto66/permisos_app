import 'package:flutter/material.dart';
import 'package:permisos_app/core/models/menu_item.dart';

final List<MenuItem> menuItems = <MenuItem>[
  MenuItem(title: 'Giróscopio', icon: Icons.downloading, route: '/gyroscope'),
  MenuItem(title: 'Acelerómetro', icon: Icons.speed, route: '/accelometer'),
  MenuItem(title: 'Magnetómetro', icon: Icons.explore_outlined, route: '/magnetometer'),
  MenuItem(title: 'Giróscopio ball', icon: Icons.sports_baseball_outlined, route: '/gyroscope_ball'),
  MenuItem(title: 'Brújula', icon: Icons.explore, route: '/compass'),
];
