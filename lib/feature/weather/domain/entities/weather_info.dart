class WeatherInfo {
  final String temperature;
  final String description;

  final String chanceOfRain; //? Cloudiness

  final String sunliness; //100 -  Cloudiness
  final String humidity;
  final String windSpeed;

  WeatherInfo({
    required this.temperature,
    required this.description,
    required this.chanceOfRain,
    required this.sunliness,
    required this.humidity,
    required this.windSpeed,
  });
}
