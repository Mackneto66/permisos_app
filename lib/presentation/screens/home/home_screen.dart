import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarCustomWidget(title: Text('Home')), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: const MainMenuWidget(),
          ),
        ],
      ),
    );
  }
}


