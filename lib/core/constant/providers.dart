import 'package:weather_app/core/_core_export.dart';

class Providers {
  static final authentication = ChangeNotifierProvider<WeatherProvider>(
    (ref) => sl(),
  );
  static final logIn = ChangeNotifierProvider.autoDispose<LogInProvider>(
    (ref) => LogInProvider(),
  );
  static final signIn = ChangeNotifierProvider.autoDispose<SignInProvider>(
    (ref) => SignInProvider(),
  );
}
