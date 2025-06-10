import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permisos_app/core/models/menu_item.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.title,
    required this.route,
    required this.icon,
    this.bgColors = const [Color(0xFF5EDFFF), Color(0xFF0979AE)], 
    required MenuItem item,
  });
  final String title, route;
  final IconData icon;
  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(route),
      child: Container( 
        padding: EdgeInsets.all(8), 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: bgColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
      ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.white,),
          const SizedBox(height: 10,),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
        ],
      )),
    );
  }
}
