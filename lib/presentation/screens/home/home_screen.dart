import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget( 
        child: Text('Home') ,),
    );
  }
}