import 'package:weather_app/core/_core_export.dart';

class DetailPageInfoRow extends StatelessWidget {
  const DetailPageInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const DetailPageIconText(icon: AppIconPaths.rain, text: "10%"),
        SizedBox(
          width: sl<ScreenSize>().getWidthPercent(26 / 390),
        ),
        const DetailPageIconText(icon: AppIconPaths.sun, text: "0.5"),
        SizedBox(
          width: sl<ScreenSize>().getWidthPercent(26 / 390),
        ),
        const DetailPageIconText(icon: AppIconPaths.wind, text: "124 mp/h"),
      ],
    );
  }
}
