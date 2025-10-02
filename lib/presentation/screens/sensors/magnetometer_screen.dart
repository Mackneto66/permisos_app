import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class MagnetometerScreen extends ConsumerWidget {
  const MagnetometerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final magnetometer$ = ref.watch(magnetometerProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Magnetómetro'),
      body: Center(
          child: magnetometer$.when(
              data: (value) => Text(value.x.toString(),
                  style: textTheme.titleLarge), //Norte magnetico
              error: (error, stackTrace) {
                if (kDebugMode) {
                  print('Error en el sensor del magnetométero: $stackTrace');
                }
                return Text(error.toString());
              },
              loading: () => Center(child: CircularProgressIndicatorWidget()))),
    );
  }
}
