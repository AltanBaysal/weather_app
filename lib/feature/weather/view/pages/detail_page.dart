import 'package:weather_app/core/_core_export.dart';
import 'package:weather_app/feature/weather/view/widgets/detail_page_widgets/detail_page_body.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<LocationWeatherInfo> list =
        ref.watch(Providers.weather).searchedWeatherInfoList;
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: kToolbarHeight / 2),
          const DetailPageAppBar(),
          Expanded(
            child: PageView.builder(
              itemCount: list.length,
              controller: PageController(
                initialPage: sl<WeatherProvider>().pageViewInitialPage,
              ),
              itemBuilder: (context, index) {
                return DetailPageBody(
                  locationWeatherInfo: list[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
