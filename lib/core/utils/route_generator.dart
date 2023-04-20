import 'package:weather_app/core/_core_export.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.base: //TODO
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case AppRoutes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case AppRoutes.detailPage:
        return MaterialPageRoute(
          builder: (_) => const DetailPage(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Text("Error"),
      );
    });
  }
}
