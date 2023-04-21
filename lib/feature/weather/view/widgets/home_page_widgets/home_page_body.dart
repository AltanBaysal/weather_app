import 'package:weather_app/core/_core_export.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (ref.watch(Providers.weather).weatherListStatus) {
      case WeatherListStatus.empty:
        return Column(
          children: [
            SizedBox(
              height: sl<ScreenSize>().getHeightPercent(0.03),
            ),
            const Text(AppTexts.thereIsNothingToShow),
          ],
        );
      case WeatherListStatus.loaded:
        return const HomePageWeatherList();
      case WeatherListStatus.loading:
        return Column(
          children: [
            const HomePageWeatherList(),
            SizedBox(
              height: sl<ScreenSize>().getHeightPercent(.05),
            ),
            const CircularProgressIndicator.adaptive(),
          ],
        );
      case WeatherListStatus.noResult:
        return Column(
          children: [
            SizedBox(
              height: sl<ScreenSize>().getHeightPercent(0.03),
            ),
            const Text(AppTexts.noResult),
          ],
        );
      case WeatherListStatus.searching:
        return Column(
          children: [
            SizedBox(
              height: sl<ScreenSize>().getHeightPercent(.05),
            ),
            const CircularProgressIndicator.adaptive(),
          ],
        );
      case WeatherListStatus.error:
        return Column(
          children: [
            SizedBox(
              height: sl<ScreenSize>().getHeightPercent(0.03),
            ),
            const Text(AppTexts.somethingWentWrong),
          ],
        );
      default:
        return Column(
          children: [
            SizedBox(
              height: sl<ScreenSize>().getHeightPercent(0.03),
            ),
            const Text(AppTexts.somethingWentWrong),
          ],
        );
    }
  }
}
