import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permisos_app/presentation/screens/providers/provider.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class GyroscopeBallScreen extends ConsumerWidget {
  const GyroscopeBallScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gyroscope$ = ref.watch(gyroscopeProvider);
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBarCustomWidget(title: 'Giróscopio ball'),
      body: SizedBox.expand(
        child: gyroscope$.when(
            data: (value) =>
                MovingBallWidget(x: value.x, y: value.y, theme: theme),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => Center(child: CircularProgressIndicatorWidget())),
      ),
    );
  }
}
