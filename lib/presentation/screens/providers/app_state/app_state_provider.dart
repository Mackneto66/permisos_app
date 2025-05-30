/* 
  resume => en primer plano,
  pause => en segundo plano,
  inactive => no tiene el foco aunque esta en primer plano, 
  no todos los dispositivos pueden tener dos apps en primer plano,
  detached => la app esta cerrada 
*/


import 'package:flutter/material.dart' show AppLifecycleState;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = StateProvider<AppLifecycleState>((ref) {
  return AppLifecycleState.resumed;
});