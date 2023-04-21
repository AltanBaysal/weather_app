import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final NetworkInfo networkInfo;
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepositoryImpl({
    required this.networkInfo,
    required this.weatherRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<LocationWeatherInfo>>>
      fetchLocationWeatherInfoList(
    NoParams params,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }

    final List<LocationWeatherInfo> result = [];
    late final List<LocationInfoModel> locationInfoList;

    try {
      locationInfoList = await weatherRemoteDataSource.fetchCapitals();
    } catch (e) {
      return Left(UnImplementedFailure());
    }

    for (var locationInfo in locationInfoList) {
      final Future<WeatherInfoModel> weatherInfo;

      try {
        weatherInfo = weatherRemoteDataSource.fetchCapitalsWeatherInfo(
          locationInfo.capital,
        );
        result.add(LocationWeatherInfo(
          locationInfo: locationInfo,
          weatherInfo: await weatherInfo,
        ));
      } catch (e) {
        continue;
      }
    }

    return Right(result);
  }

  @override
  Future<Either<Failure, List<LocationInfo>>> fetchLocationInfoList(
    NoParams params,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }
    try {
      return Right(await weatherRemoteDataSource.fetchCapitals());
    } catch (e) {
      return Left(UnImplementedFailure());
    }
  }

  @override
  Future<Either<Failure, WeatherInfo>> fetchWeatherInfo(
    FetchWeatherInfoParam param,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }
    try {
      return Right(await weatherRemoteDataSource.fetchCapitalsWeatherInfo(
        param.capital,
      ));
    } catch (e) {
      return Left(UnImplementedFailure());
    }
  }
}
