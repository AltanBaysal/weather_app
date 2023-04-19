import 'package:weather_app/core/_core_export.dart';

class RouteManager {
  static Future<T?>? pushNamed<T extends Object?>(
    String path, {
    Object? arguments,
  }) {
    if (GlobalContextKey.instance.globalKey.currentState == null) {
      ScaffoldMessenger.of(
        GlobalContextKey.instance.globalKey.currentContext!,
      ).clearSnackBars();
    }
    return GlobalContextKey.instance.globalKey.currentState
        ?.pushNamed(path, arguments: arguments);
  }

  static Future<T?>? pushReplacementNamed<T extends Object?>(
    String path, {
    Object? arguments,
  }) {
    if (GlobalContextKey.instance.globalKey.currentState == null) {
      ScaffoldMessenger.of(
        GlobalContextKey.instance.globalKey.currentContext!,
      ).clearSnackBars();
    }
    return GlobalContextKey.instance.globalKey.currentState
        ?.pushReplacementNamed(path, arguments: arguments);
  }

  static dynamic back({final Object? arguments}) async {
    if (GlobalContextKey.instance.globalKey.currentState != null) {
      ScaffoldMessenger.of(
        GlobalContextKey.instance.globalKey.currentContext!,
      ).clearSnackBars();

      return GlobalContextKey.instance.globalKey.currentState?.pop(arguments);
    }
  }
}
