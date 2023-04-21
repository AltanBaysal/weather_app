import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherInfo>> fetchWeatherInfo(
    FetchWeatherInfoParam param,
  );

  Future<Either<Failure, List<LocationInfo>>> fetchLocationInfoList(
    NoParams params,
  );

  Future<Either<Failure, List<LocationWeatherInfo>>>
      fetchLocationWeatherInfoList(
    NoParams params,
  );
}
