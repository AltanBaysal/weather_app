import 'package:weather_app/core/_core_export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: sl<ScreenSize>().getHeightPercent(40 / 807),
          ),
          child: Column(
            children: const [
              SearchCapitalTextField(),
              SizedBox(
                height: 24,
              ),
              HomePageWeatherList(),
            ],
          ),
        ),
      ),
    );
  }
}
