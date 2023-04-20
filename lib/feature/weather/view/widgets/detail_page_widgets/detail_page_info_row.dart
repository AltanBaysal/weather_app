import 'package:weather_app/core/_core_export.dart';

class DetailPageInfoRow extends StatelessWidget {
  const DetailPageInfoRow({
    super.key,
    required this.rain,
    required this.sun,
    required this.wind,
  });

  final String rain;
  final String sun;
  final String wind;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DetailPageIconText(icon: AppIconPaths.rain, text: "$rain%"),
        SizedBox(
          width: sl<ScreenSize>().getWidthPercent(26 / 390),
        ),
        DetailPageIconText(icon: AppIconPaths.sun, text: sun),
        SizedBox(
          width: sl<ScreenSize>().getWidthPercent(26 / 390),
        ),
        DetailPageIconText(icon: AppIconPaths.wind, text: "$wind mp/h"),
      ],
    );
  }
}
