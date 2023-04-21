import 'package:weather_app/core/_core_export.dart';

class HomePageWeatherList extends ConsumerWidget {
  const HomePageWeatherList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<LocationWeatherInfo> list =
        ref.watch(Providers.authentication).searchedWeatherInfoList;
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return HomePageCard(
          index: index,
          city: list[index].locationInfo.capital,
          region: list[index].locationInfo.region,
          temperature: list[index].weatherInfo.temperature,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
    );
  }
}
