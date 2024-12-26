import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/data/model/city_model.dart';

class PlaceDetailsView extends StatelessWidget {
  const PlaceDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 2.3 / 2,
            child: Container(
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    CityModel.getAllCitye()[index].imagePath,
                  ),
                  opacity: 0.4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
