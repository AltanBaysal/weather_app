import 'package:weather_app/core/_core_export.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    required this.index,
    required this.region,
    required this.city,
    required this.temperature,
  });

  final int index;
  final String region;
  final String city;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sl<ScreenSize>().getHeightPercent(160 / 807),
      child: GestureDetector(
        onTap: () {
          sl<WeatherProvider>().pageViewInitialPage = index;
          RouteManager.pushNamed(AppRoutes.detailPage);
        },
        child: Card(
          shadowColor: AppColors.primaryShadowColor,
          elevation: 3,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            side: BorderSide(color: AppColors.lightGrey3),
          ),
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomePageLocationText(text: region),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppSvgPicture(
                      svg: AppIconPaths.cloud,
                      percentage: 122 / 807,
                    ),
                    Text(
                      city,
                      style: AppTextStyles.poppins20Medium.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    Text(
                      temperature + AppTexts.degrees,
                      style: AppTextStyles.poppins16Medium.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
