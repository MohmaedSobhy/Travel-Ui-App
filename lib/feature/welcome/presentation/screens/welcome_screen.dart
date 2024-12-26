import 'package:flutter/material.dart';
import 'package:travel_ui/feature/welcome/presentation/views/welcome_screen_body_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeScreenBodyView(),
    );
  }
}
