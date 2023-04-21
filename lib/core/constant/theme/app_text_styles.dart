import 'package:weather_app/core/_core_export.dart';

class AppTextStyles {
  //Inter
  static final TextStyle inter14Regular = GoogleFonts.inter(
    fontWeight: FontWeight.w300,
    fontSize: sl<ScreenSize>().getWidthPercent(.037),
  );

  static final TextStyle inter18Medium = GoogleFonts.inter(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.048),
  );

  static final TextStyle inter18SemiBold = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.044),
  );

  //Poppins
  static final TextStyle poppins12SemiBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.03),
  );

  static final TextStyle poppins16Medium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.041),
  );

  static final TextStyle poppins18SemiBold = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: sl<ScreenSize>().getWidthPercent(.048),
  );

  static final TextStyle poppins20Medium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: sl<ScreenSize>().getWidthPercent(.054),
  );

  static final TextStyle poppins22Regular = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: sl<ScreenSize>().getWidthPercent(.060),
  );

  static final TextStyle poppins24Bold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.063),
  );

  static final TextStyle poppins45Bold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.115),
  );

  //Headlines
  static TextStyle title30BoldBlack = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: sl<ScreenSize>().getWidthPercent(.07),
  );
}
