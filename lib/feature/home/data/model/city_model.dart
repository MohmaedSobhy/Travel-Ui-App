import 'package:travel_ui/core/utils/app_images_assets.dart';

class CityModel {
  final String cityName;
  final String imagePath;

  CityModel({required this.cityName, required this.imagePath});

  static List<CityModel> getAllCitye() {
    return [
      CityModel(cityName: 'City Name', imagePath: AppImageAssets.cityOne),
      CityModel(cityName: 'City Name', imagePath: AppImageAssets.city2),
      CityModel(cityName: 'City Name', imagePath: AppImageAssets.cityThree),
      CityModel(cityName: 'City Name', imagePath: AppImageAssets.cityFour),
      CityModel(cityName: 'City Name', imagePath: AppImageAssets.cityFive),
      CityModel(cityName: 'City Name', imagePath: AppImageAssets.citySix),
    ];
  }
}
