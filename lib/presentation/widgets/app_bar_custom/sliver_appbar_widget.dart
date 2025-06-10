
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class SliverAppBarCustomWidget extends StatelessWidget {
  const SliverAppBarCustomWidget({
    required this.title,
    this.bgColors = const [Colors.lightBlueAccent, Colors.blueAccent],
    super.key,
  });

  final String title;
  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: TitleAppBarWidget(bgColors: bgColors, title: title),
      /* backgroundColor: Colors.black, */
      elevation: 5,
      centerTitle: true,
      actions: [
        IconSettingsWidget(bgColors: bgColors)
      ],
    );
  }
}
