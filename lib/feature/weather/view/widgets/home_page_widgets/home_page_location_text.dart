import 'package:weather_app/core/_core_export.dart';

class HomePageLocationText extends StatelessWidget {
  const HomePageLocationText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppSvgPicture(
          svg: AppIconPaths.location,
          color: AppColors.blue,
          percentage: .055,
        ),
        const SizedBox(
          width: 13,
        ),
        Text(
          text,
          style: AppTextStyles.inter18SemiBold.copyWith(
            color: AppColors.blue,
          ),
        ),
      ],
    );
  }
}
