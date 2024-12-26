import 'package:flutter/material.dart';
import 'package:travel_ui/core/routes/app_route.dart';
import 'package:travel_ui/core/utils/app_images_assets.dart';
import 'package:travel_ui/core/utils/app_string.dart';

class WelcomeScreenBodyView extends StatelessWidget {
  const WelcomeScreenBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImageAssets.backGround),
          fit: BoxFit.cover,
        ),
      ),
      child: Material(
        color: Colors.black.withAlpha((255 * 0.3).round()),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 25,
              vertical: 65,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.enjoy,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  AppString.theWrorld,
                  style: TextStyle(
                      color: Colors.white.withAlpha((255 * 0.9).round()),
                      fontSize: 35,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  AppString.welcomeDescription,
                  style: TextStyle(
                    color: Colors.white.withAlpha((255 * 0.7).round()),
                    fontSize: 16,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.home);
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
