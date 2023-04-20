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
      height: sl<ScreenSize>().getHeightPercent(152 / 807),
      child: GestureDetector(
        onTap: () {
          sl<WeatherProvider>().pageViewInitialPage = index;
          RouteManager.pushNamed(AppRoutes.detailPage);
        },
        child: Card(
          shadowColor: AppColors.primaryShadowColor,
          elevation: 6,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            side: BorderSide(color: AppColors.lightGrey2),
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
                      percentage: 100 / 807,
                    ),
                    Text(
                      city,
                      style: AppTextStyles.poppins20Medium.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    Text(
                      temperature,
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
