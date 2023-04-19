import 'package:weather_app/core/_core_export.dart';

class AppProviderContainer {
  static ProviderContainer get instance {
    return ProviderScope.containerOf(
      GlobalContextKey.instance.globalKey.currentContext!,
      listen: false,
    );
  }
}
