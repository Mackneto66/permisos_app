import 'package:flutter/material.dart';
import 'package:permisos_app/presentation/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBarCustomWidget(title: Text('Home')), 
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              sliver: const MainMenuWidget(),
            ),
          ],
        ),
      ),
    );
  }
}


