import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/data/model/city_model.dart';
import 'package:travel_ui/feature/home/presentation/views/city_details_body_view.dart';
import 'package:travel_ui/feature/home/presentation/views/custome_app_bar_details_city_screen.dart';

class CityDetailsScreen extends StatelessWidget {
  final CityModel cityModel;
  const CityDetailsScreen({super.key, required this.cityModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            cityModel.imagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 90),
          child: CustomeAppBarDetailsCityScreen(),
        ),
        body: SafeArea(
          child: Align(
            alignment: AlignmentDirectional.bottomStart,
            child: CityDetailsBodyView(),
          ),
        ),
      ),
    );
  }
}
