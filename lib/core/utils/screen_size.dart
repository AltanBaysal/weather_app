import 'package:weather_app/core/_package_export.dart';

class ScreenSize {
  late MediaQueryData screenSize;

  double getHeightPercent(final double percent) {
    return screenSize.size.height * percent;
  }

  double getWidthPercent(final double percent) {
    return screenSize.size.width * percent;
  }

  EdgeInsets get padding => screenSize.padding;

  set setScreenSize(final MediaQueryData size) => screenSize = size;
}
