import 'package:weather_app/core/_core_export.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      /*
      case AppRoutes.base:
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
        );
      */
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    throw UnimplementedError();
    /*
    return MaterialPageRoute(builder: (_) {
      return const ErrorPage();
    });
    */
  }
}
