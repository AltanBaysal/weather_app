import 'package:weather_app/core/_core_export.dart';
import 'package:weather_app/feature/weather/view/pages/detail_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.base:
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
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
    throw UnimplementedError();
    /*
    return MaterialPageRoute(builder: (_) {
      return const ErrorPage();
    });
    */
  }
}
