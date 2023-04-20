import 'package:weather_app/core/_core_export.dart';

class Providers {
  static final authentication = ChangeNotifierProvider<WeatherProvider>(
    (ref) => sl(),
  );
}
