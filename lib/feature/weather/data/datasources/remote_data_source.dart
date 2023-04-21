import 'dart:convert';

import 'package:weather_app/core/_core_export.dart';

abstract class WeatherRemoteDataSource {
  Future<List<LocationInfoModel>> fetchCapitals();
  Future<WeatherInfoModel> fetchCapitalsWeatherInfo(String capital);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  @override
  Future<List<LocationInfoModel>> fetchCapitals() async {
    final response = await sl<Dio>(instanceName: "restcountries").get(
      "v3.1/all?",
      queryParameters: {
        "fields": "capital,region,latlng",
      },
      options: Options(
        responseType: ResponseType.plain,
        contentType: "application/json",
      ),
    );

    if (response.statusCode != 200) throw ServerException();

    final List<LocationInfoModel> result = [];

    for (var json in jsonDecode(response.data)) {
      try {
        result.add(LocationInfoModel.fromJson(json));
      } catch (e) {
        continue;
      }
    }

    return result;
  }

  @override
  Future<WeatherInfoModel> fetchCapitalsWeatherInfo(String capital) async {
    final response = await sl<Dio>(instanceName: "openweathermap").get(
      "data/2.5/weather?",
      queryParameters: {
        "q": capital,
        "units": "imperial",
        "appid": "2a63928ffc5d230c155fbafe5fbf779f"
      },
      options: Options(
        responseType: ResponseType.plain,
        contentType: "application/json",
      ),
    );

    if (response.statusCode == 200) {
      return WeatherInfoModel.fromJson(jsonDecode(response.data));
    }

    throw ServerException();
  }
}
