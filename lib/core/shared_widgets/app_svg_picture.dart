import 'package:weather_app/core/_core_export.dart';

class AppSvgPicture extends StatelessWidget {
  const AppSvgPicture({
    super.key,
    required this.svg,
    this.percentage = .045,
    this.color,
  });

  final String svg;
  final double percentage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: sl<ScreenSize>().getWidthPercent(percentage),
      child: SvgPicture.asset(
        svg,
        color: color,
        fit: BoxFit.contain,
      ),
    );
  }
}
