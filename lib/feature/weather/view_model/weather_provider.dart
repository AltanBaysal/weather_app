import 'package:weather_app/core/_core_export.dart';

class WeatherProvider extends ChangeNotifier {
  TextEditingController searchTextEditingController = TextEditingController();
  List<LocationWeatherInfo> mainWeatherInfoList = [];
  List<LocationWeatherInfo> searchedWeatherInfoList = [];

  Future<void> fetchWeatherInfo() async {
    searchedWeatherInfoList = mainWeatherInfoList;
    notifyListeners();
  }

  void searchWeatherInfo() async {
    notifyListeners();
  }
}
