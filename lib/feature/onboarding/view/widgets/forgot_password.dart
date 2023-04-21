import 'package:weather_app/core/_core_export.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          AppTexts.forgotPassword,
          style: AppTextStyles.inter14Regular.copyWith(
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
