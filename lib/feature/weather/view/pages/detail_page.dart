import 'package:weather_app/core/_core_export.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: kToolbarHeight / 2), //TODO
          const DetailPageAppBar(),
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: sl<ScreenSize>().getHeightPercent(38 / 807),
                    ),
                    const DetailPageLocationText(text: "France"),
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
                      "Chance of rain",
                      style: AppTextStyles.inter14Regular.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Partly Cloudly",
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
                          "32",
                          style: AppTextStyles.poppins45Bold.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const DetailPageInfoRow()
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
