import 'package:flutter/material.dart';
import 'package:travel_ui/feature/home/data/model/city_model.dart';

class CityItemWidget extends StatelessWidget {
  final CityModel cityModel;
  const CityItemWidget({super.key, required this.cityModel});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.2 / 3.8,
      child: Container(
        padding: EdgeInsetsDirectional.all(15),
        margin: EdgeInsetsDirectional.only(start: 15),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(
              cityModel.imagePath,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Text(
                cityModel.cityName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
