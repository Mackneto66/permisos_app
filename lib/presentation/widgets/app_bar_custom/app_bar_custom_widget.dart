import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarCustomWidget extends PreferredSize {
  const AppBarCustomWidget({
    super.key,
    super.preferredSize = const Size.fromHeight(50),
    this.showSettings = true,
    required super.child,
  });
  final bool showSettings;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: child,
      centerTitle: true,
      actions: [
        Visibility(
          visible: showSettings,
          child: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.push('/permisos');
            },
          ),
        ),
      ],
    );
  }
}
