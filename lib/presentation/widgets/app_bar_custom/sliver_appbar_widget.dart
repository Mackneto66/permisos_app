
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SliverAppBarCustomWidget extends StatelessWidget {
  const SliverAppBarCustomWidget({
    required this.title,
    super.key,
  });

  final Text title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: title,
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            context.push('/permisos');
          },
        ),
      ],
    );
  }
}
