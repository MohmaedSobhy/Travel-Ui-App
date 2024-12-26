import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: 2,
      backgroundColor: Colors.transparent,
      items: [
        Icon(Icons.person_outline, size: 30),
        Icon(Icons.favorite_outline, size: 30),
        Icon(
          Icons.home,
          size: 30,
          color: Colors.redAccent,
        ),
        Icon(Icons.location_city_outlined, size: 30),
        Icon(Icons.list, size: 30),
      ],
    );
  }
}
