import 'package:weather_app/core/_core_export.dart';

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      child: Row(
        children: [
          const CustomBackButton(),
          SizedBox(
            width: sl<ScreenSize>().getWidthPercent(46 / 390),
          ),
          Text(
            AppTexts.sliderView,
            style: AppTextStyles.inter18Medium.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
