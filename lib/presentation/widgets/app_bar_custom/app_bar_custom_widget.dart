import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class AppBarCustomWidget extends PreferredSize {
  AppBarCustomWidget({
    super.key,
    super.preferredSize = const Size.fromHeight(50),
    this.showSettings = true,
    this.bgColors = const [Colors.lightBlueAccent, Colors.blueAccent],
    required this.title,
  }) : super(
            child: AppBar(
          title: TitleAppBarWidget(bgColors: bgColors, title: title),
          centerTitle: true,
          actions: [
            Visibility(
              visible: showSettings,
              child: IconSettingsWidget(bgColors: bgColors),
            ),
          ],
        ));
  final String title;
  final bool showSettings;
  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    return super.child;
  }
}

