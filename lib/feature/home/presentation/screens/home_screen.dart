import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/presentation/views/home_screen_body_view.dart';

import '../views/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: HomeScreenBodyView()),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}
