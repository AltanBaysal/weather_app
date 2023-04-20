import 'package:weather_app/core/_core_export.dart';

class LocationInfoModel extends LocationInfo {
  LocationInfoModel({
    required super.capital,
    required super.region,
  });

  LocationInfoModel.fromJson(Map<String, dynamic> json)
      : super(
          capital: json["capital"][1], //TODO boş gelme ihtimali var
          region: json["region"],
        );
}
