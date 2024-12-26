import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/data/model/city_model.dart';
import 'package:travel_ui/feature/home/presentation/widgets/custome_city_details.dart';

class CustomeCityCategory extends StatelessWidget {
  final CityModel cityModel;
  const CustomeCityCategory({super.key, required this.cityModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  cityModel.imagePath,
                ),
                fit: BoxFit.cover,
                opacity: 0.8,
              ),
            ),
          ),
          CustomeCityDetails(),
        ],
      ),
    );
  }
}
