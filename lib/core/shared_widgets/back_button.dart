import 'package:weather_app/core/_core_export.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.size,
    this.color,
  });

  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: RouteManager.back,
      child: Icon(
        Icons.arrow_back,
        color: color ?? AppColors.white,
        size: size ?? sl<ScreenSize>().getWidthPercent(.06),
      ),
    );
  }
}
