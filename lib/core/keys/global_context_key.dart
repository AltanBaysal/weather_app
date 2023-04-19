import 'package:weather_app/core/_core_export.dart';

class GlobalContextKey {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  static GlobalContextKey instance = GlobalContextKey._init();
  GlobalContextKey._init();
}
