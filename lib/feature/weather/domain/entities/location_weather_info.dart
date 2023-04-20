import 'package:weather_app/core/_core_export.dart';

class LocationWeatherInfo {
  final LocationInfo locationInfo;
  final WeatherInfo weatherInfo;

  LocationWeatherInfo({
    required this.locationInfo,
    required this.weatherInfo,
  });
}
