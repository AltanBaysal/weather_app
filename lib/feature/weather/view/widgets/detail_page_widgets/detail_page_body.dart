import 'package:weather_app/core/_core_export.dart';

class DetailPageBody extends StatelessWidget {
  const DetailPageBody({
    required this.locationWeatherInfo,
    super.key,
  });

  final LocationWeatherInfo locationWeatherInfo;

  @override
  Widget build(BuildContext context) {
    final locationInfo = locationWeatherInfo.locationInfo;
    final weatherInfo = locationWeatherInfo.weatherInfo;

    return Column(
      children: [
        SizedBox(
          height: sl<ScreenSize>().getHeightPercent(48 / 807),
        ),
        DetailPageLocationText(text: locationInfo.region),
        SizedBox(
          height: sl<ScreenSize>().getHeightPercent(34 / 807),
        ),
        const AppSvgPicture(svg: AppIconPaths.cloud, percentage: 94 / 390),
        SizedBox(
          height: sl<ScreenSize>().getHeightPercent(18 / 807),
        ),
        Text(
          "${AppTexts.chanceOfRain} ${weatherInfo.chanceOfRain}%",
          style: AppTextStyles.inter14Regular.copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          weatherInfo.description,
          style: AppTextStyles.poppins18SemiBold.copyWith(
            color: AppColors.white,
          ),
        ),
        SizedBox(
          height: sl<ScreenSize>().getHeightPercent(45 / 807),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weatherInfo.temperature,
              style: AppTextStyles.poppins45Bold.copyWith(
                color: AppColors.white,
              ),
            ),
            Row(
              children: [
                const AppSvgPicture(
                  svg: AppIconPaths.circle,
                  color: Colors.white,
                  percentage: 13 / 390,
                ),
                Text(
                  " F",
                  style: AppTextStyles.poppins22Regular.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        DetailPageInfoRow(
          rain: weatherInfo.humidity,
          sun: weatherInfo.sunliness,
          wind: weatherInfo.windSpeed,
        )
      ],
    );
  }
}
