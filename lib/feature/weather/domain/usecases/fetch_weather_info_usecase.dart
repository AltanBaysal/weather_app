import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class FetchlWeatherInfoUsecase
    implements UseCase<WeatherInfo, FetchWeatherInfoParam> {
  final WeatherRepository weatherRepository;

  FetchlWeatherInfoUsecase(this.weatherRepository);

  @override
  Future<Either<Failure, WeatherInfo>> call(FetchWeatherInfoParam params) {
    return weatherRepository.fetchWeatherInfo(params);
  }
}
