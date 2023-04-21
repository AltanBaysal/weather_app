import 'package:weather_app/core/_core_export.dart';

class AppTextStyles {
  //Inter
  static final TextStyle inter14Regular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.04), //?
    //Inter
  );

  static final TextStyle inter18Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.04), //?
    //Inter
  );

  static final TextStyle inter18SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(35 / 807), //?
    //Inter
  );

  //Poppins
  static final TextStyle poppins12SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.037), //?
    //Poppins
  );

  static final TextStyle poppins16Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.037), //?
    //Poppins
  );

  static final TextStyle poppins18SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.04), //?
    //Poppins
  );

  static final TextStyle poppins20Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.037), //?
    //Poppins
  );

  static final TextStyle poppins24Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.037), //?
    //Poppins
  );

  static final TextStyle poppins45Bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.037), //?
    //Poppins
  );

  ////TODO will removed
  //Headlines
  static TextStyle title30BoldBlack = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.07),
  );

  static TextStyle title22Bold = TextStyle(
    fontFamily: "Urbanist",
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.055),
  );
}
