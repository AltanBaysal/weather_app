import 'package:weather_app/core/_core_export.dart';

class AppTextStyles {
  //Headlines
  static final TextStyle title30BoldBlack = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.07),
  );

  static final TextStyle title22Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.055),
  );

  //Body

  static final TextStyle body16Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.04),
  );

  static final TextStyle body15Medium = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static final TextStyle body15SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static final TextStyle body15Bold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static final TextStyle body14SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.035),
  );

  static final TextStyle body12Regular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.032),
  );
}
