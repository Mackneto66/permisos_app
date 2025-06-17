import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class AcelerometerScreen extends ConsumerWidget {
  const AcelerometerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final acceleroScope$ = ref.watch(accelerometerProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Acelerómetro'),
      body: Center(
          child: acceleroScope$.when(
              data: (value) =>
                  Text(value.toString(), style: textTheme.titleLarge),
              error: (error, stackTrace) {
                if (kDebugMode) {
                  print('Error en el sensor del acelerómetro: $stackTrace');
                }
                return Text(error.toString());
              },
              loading: () => Center(child: CircularProgressIndicatorWidget()))),
    );
  }
}