import 'package:flutter/material.dart';
import 'package:permisos_app/core/core.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';
/* import 'package:permisos_app/core/core.dart';
import 'package:permisos_app/presentation/widgets/widget.dart'; */

class MainMenuWidget extends StatelessWidget {
  const MainMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: menuItems.map((item) => MenuItemWidget(
        item: item, 
        title: item.title, 
        route: item.route, 
        icon: item.icon,)).toList(),
    );
  }
}
