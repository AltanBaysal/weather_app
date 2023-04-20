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
          height: sl<ScreenSize>().getHeightPercent(38 / 807),
        ),
        DetailPageLocationText(text: locationInfo.capital),
        SizedBox(
          height: sl<ScreenSize>().getHeightPercent(38 / 807),
        ),
        SizedBox(
          height: sl<ScreenSize>().getHeightPercent(88 / 807),
          child: Image.asset(
            AppImagePaths.cloud,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          AppTexts.chanceOfRain,
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
          children: [
            Text(
              weatherInfo.temperature,
              style: AppTextStyles.poppins45Bold.copyWith(
                color: AppColors.white,
              ),
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
