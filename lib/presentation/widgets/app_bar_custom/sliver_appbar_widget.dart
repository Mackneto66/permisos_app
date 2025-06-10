import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class SliverAppBarCustomWidget extends StatelessWidget {
  const SliverAppBarCustomWidget({
    required this.title,
    this.bgColors = const [
      Color(0xFFFFD700),
      Color(0xFFFFF000)
    ],
    this.gradientBg = const [
    Color(0xFF5EDFFF), 
    Color(0xFF0979AE),
    ],
    super.key,
  });

  final String title;
  final List<Color> bgColors;
  final List<Color> gradientBg;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: TitleAppBarWidget(bgColors: bgColors, title: title),
      backgroundColor: Colors.transparent,
      forceElevated: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientBg,
            /* colors: [Colors.white, Colors.black, Colors.white] ,*/
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      elevation: 5,
      shadowColor: const Color(0xFF312B2B),
      centerTitle: true,
      actions: [IconSettingsWidget(bgColors: bgColors)],
    );
  }
}
