import 'package:flutter/material.dart';
import 'package:travel_ui/core/routes/app_route.dart';
import 'package:travel_ui/feature/home/data/model/city_model.dart';
import 'package:travel_ui/feature/home/presentation/widgets/custome_city_category.dart';

class CityCategoryItems extends StatelessWidget {
  const CityCategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: CityModel.getAllCitye().length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.detailsScreen,
                arguments: CityModel.getAllCitye()[index]);
          },
          child: CustomeCityCategory(
            cityModel: CityModel.getAllCitye()[index],
          ),
        );
      },
    );
  }
}
