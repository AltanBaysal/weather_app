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
            children: [
              const SearchCapitalTextField(),
              const SizedBox(
                height: 24,
              ),
              ListView.separated(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
