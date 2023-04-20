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
          temperature: json["main"]["temp"].toString(),
          description: json["weather"][0]["description"],
          chanceOfRain: json["clouds"]["all"].toString(),
          sunliness: (100 - json["clouds"]["all"]).toString(),
          humidity: json["main"]["humidity"].toString(),
          windSpeed: json["wind"]["speed"].toString(),
        );
}
