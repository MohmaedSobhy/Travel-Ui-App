import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/presentation/widgets/custome_icon_widget.dart';

class CustomeAppBarDetailsCityScreen extends StatelessWidget {
  const CustomeAppBarDetailsCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: CustomeIconWidget(
              icon: Icons.arrow_back,
            ),
          ),
          CustomeIconWidget(
            icon: Icons.favorite,
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
