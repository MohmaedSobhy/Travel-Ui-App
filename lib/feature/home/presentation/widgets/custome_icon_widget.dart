import 'package:flutter/material.dart';

class CustomeIconWidget extends StatelessWidget {
  final IconData icon;
  final Color? color;
  const CustomeIconWidget({super.key, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 28,
        color: color,
      ),
    );
  }
}
