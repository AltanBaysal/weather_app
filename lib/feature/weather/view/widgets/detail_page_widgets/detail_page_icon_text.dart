import 'package:weather_app/core/_core_export.dart';

class DetailPageIconText extends StatelessWidget {
  const DetailPageIconText({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppSvgPicture(
          svg: icon,
          color: Colors.white,
          percentage: 15 / 390,
        ),
        const SizedBox(width: 7),
        Text(
          text,
          style: AppTextStyles.poppins12SemiBold.copyWith(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
