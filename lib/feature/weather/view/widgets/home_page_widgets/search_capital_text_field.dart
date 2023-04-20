import 'package:weather_app/core/_core_export.dart';

class SearchCapitalTextField extends StatelessWidget {
  const SearchCapitalTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          gapPadding: 10,
        ),
        filled: true,
        fillColor: AppColors.white,
        hintStyle: AppTextStyles.inter14Regular,
        hintText: AppTexts.searchCountryCapitalsByRegion,
      ),
    );
  }
}
