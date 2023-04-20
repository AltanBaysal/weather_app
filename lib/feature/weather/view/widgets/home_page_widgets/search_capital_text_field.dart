import 'package:weather_app/core/_core_export.dart';

class SearchCapitalTextField extends StatelessWidget {
  const SearchCapitalTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.primaryShadowColor,
      color: AppColors.white,
      elevation: 6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(color: AppColors.lightGrey2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                autofocus: false,
                cursorColor: Colors.black,
                onChanged: sl<WeatherProvider>().searchWeatherInfo,
                decoration: InputDecoration(
                  hintStyle: AppTextStyles.inter14Regular,
                  hintText: AppTexts.searchCountryCapitalsByRegion,
                  border: InputBorder.none,
                ),
              ),
            ),
            const AppSvgPicture(
              svg: AppIconPaths.magnifyingGlass,
              color: AppColors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
