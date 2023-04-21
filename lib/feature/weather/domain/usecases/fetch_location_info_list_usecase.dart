import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class FetchLocationInfoListUsecase
    implements UseCase<List<LocationInfo>, NoParams> {
  final WeatherRepository weatherRepository;

  FetchLocationInfoListUsecase(this.weatherRepository);

  @override
  Future<Either<Failure, List<LocationInfo>>> call(NoParams params) {
    return weatherRepository.fetchLocationInfoList(params);
  }
}
