import 'package:weather_app/core/_core_export.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: kToolbarHeight / 2), //TODO
          const DetailPageAppBar(),
          Expanded(
            child: PageView.builder(
              //controller: ref.watch(), //TODO
              itemBuilder: (context, index) {
                return Container(); //LocationWeatherInfo(locationInfo: )
              },
            ),
          ),
        ],
      ),
    );
  }
}
