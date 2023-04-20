import 'package:weather_app/core/_core_export.dart';

class HomePageWeatherList extends ConsumerWidget {
  const HomePageWeatherList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const HomePageCard(
          city: "Berlin",
          country: "Germany",
          degree: "24",
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
    );
  }
}
