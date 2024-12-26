import 'package:travel_ui/feature/home/data/model/city_model.dart';
import 'package:travel_ui/feature/home/presentation/widgets/city_item_widget.dart';
import 'package:flutter/material.dart';

class CityListViewItems extends StatelessWidget {
  const CityListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CityModel.getAllCitye().length,
        itemBuilder: (context, index) {
          return CityItemWidget(cityModel: CityModel.getAllCitye()[index]);
        },
      ),
    );
  }
}
