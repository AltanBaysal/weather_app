import 'package:weather_app/core/_core_export.dart';

class WeatherInfoModel extends WeatherInfo {
  WeatherInfoModel({
    required super.temperature,
    required super.description,
    required super.chanceOfRain,
    required super.sunliness,
    required super.humidity,
    required super.windSpeed,
  });

  WeatherInfoModel.fromJson(Map<String, dynamic> json)
      : super(
          temperature: json["main"]["temp"],
          description: json["weather"]["description"],
          chanceOfRain: json["clouds"]["all"],
          sunliness: (100 - json["clouds"]["all"].toDouble()).toString(),
          humidity: json["main"]["humidity"],
          windSpeed: json["wind"]["speed"],
        );
}
