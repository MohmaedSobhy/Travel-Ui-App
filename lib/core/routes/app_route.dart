import 'package:flutter/material.dart';
import 'package:travel_ui/core/routes/base_route.dart';
import 'package:travel_ui/feature/home/data/model/city_model.dart';
import 'package:travel_ui/feature/home/presentation/screens/city_details_screen.dart';
import 'package:travel_ui/feature/home/presentation/screens/home_screen.dart';
import 'package:travel_ui/feature/welcome/presentation/screens/welcome_screen.dart';

abstract class AppRoutes {
  static const String welcomeScreen = "/welcome";
  static const String home = "/home";
  static const String detailsScreen = "/details";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const WelcomeScreen();
          },
        );
      case home:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return HomeScreen();
        });
      case detailsScreen:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return CityDetailsScreen(
            cityModel: settings.arguments as CityModel,
          );
        });
    }
    return null;
  }
}
