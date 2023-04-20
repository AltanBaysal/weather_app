import 'package:weather_app/core/_core_export.dart';

class DetailPageLocationText extends StatelessWidget {
  const DetailPageLocationText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const AppSvgPicture(
          svg: AppIconPaths.location,
          color: AppColors.white,
          percentage: .05,
        ),
        const SizedBox(
          width: 13,
        ),
        Text(
          text,
          style: AppTextStyles.poppins24Bold.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
