import 'dart:convert';

import 'package:weather_app/core/_core_export.dart';

abstract class WeatherRemoteDataSource {
  Future<List<LocationInfoModel>> fetchCapitals();
  Future<WeatherInfoModel> fetchCapitalsWeatherInfo(String capital);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  @override
  Future<List<LocationInfoModel>> fetchCapitals() async {
    //TODO make cleaner
    final response = await sl<Dio>(instanceName: "restcountries").get(
      "v3.1/all", //TODO ?
      queryParameters: {
        "fields": "capital,region,latlng",
      },
      options: Options(
        responseType: ResponseType.plain,
        contentType: "application/json",
      ),
    );

    if (response.statusCode != 200) throw ServerException();

    return jsonDecode(response.data).map<LocationInfoModel>(
      (data) {
        return LocationInfoModel.fromJson(data);
      },
    ).toList();
  }

  @override
  Future<WeatherInfoModel> fetchCapitalsWeatherInfo(String capital) async {
    //TODO make cleaner
    final response = await sl<Dio>(instanceName: "openweathermap").get(
      "data/2.5/weather", //TODO ?
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

    if (response.statusCode != 200) throw ServerException();

    return WeatherInfoModel.fromJson(jsonDecode(response.data));
  }
}