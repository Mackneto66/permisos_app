import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class GyroscopeScreen extends ConsumerWidget {
  const GyroscopeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final gyroscope$ = ref.watch(gyroscopeProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Giróscopio'),
      body: Center(
        child: gyroscope$.when(
          data: (value) => Text(value.toString(), style: textTheme.titleLarge),
          error: (error, stackTrace) {
            if (kDebugMode) {
              print('Error en el sensor del giroscópio: $stackTrace');
            }
            return Text(error.toString());
          },
          loading: () => Center(child: CircularProgressIndicatorWidget()))),
    );
  }
}

