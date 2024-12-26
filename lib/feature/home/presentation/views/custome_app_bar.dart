import 'package:flutter/material.dart';
import 'package:travel_ui/core/utils/app_string.dart';
import 'package:travel_ui/feature/home/presentation/widgets/custome_icon_widget.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomeIconWidget(
            icon: Icons.sort_rounded,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xFFF65959),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                AppString.location,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          CustomeIconWidget(
            icon: Icons.search,
          )
        ],
      ),
    );
  }
}
