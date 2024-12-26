import 'package:flutter/material.dart';

class CityDetailsTextView extends StatelessWidget {
  const CityDetailsTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'City Name, Country',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 10),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 25,
            ),
            Text(
              '4.5',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }
}
