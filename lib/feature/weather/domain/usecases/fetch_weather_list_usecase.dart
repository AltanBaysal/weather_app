import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class FetchlWeatherListUsecase
    implements UseCase<List<LocationWeatherInfo>, NoParams> {
  final WeatherRepository weatherRepository;

  FetchlWeatherListUsecase(this.weatherRepository);

  @override
  Future<Either<Failure, List<LocationWeatherInfo>>> call(NoParams params) {
    return weatherRepository.fetchLocationWeatherInfoList(params);
  }
}
