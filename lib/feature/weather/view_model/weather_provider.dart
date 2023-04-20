import 'package:weather_app/core/_core_export.dart';

class WeatherProvider extends ChangeNotifier {
  final FetchlWeatherListUsecase fetchlWeatherListUsecase;
  WeatherProvider({required this.fetchlWeatherListUsecase});

  int pageViewInitialPage = 0;
  List<LocationWeatherInfo> mainWeatherInfoList = [];
  List<LocationWeatherInfo> searchedWeatherInfoList = [];
  WeatherListStatus weatherListStatus = WeatherListStatus.loading;

  //TODO Improve
  Future<void> fetchWeatherInfoList() async {
    weatherListStatus = WeatherListStatus.loading;
    notifyListeners();

    final result = await fetchlWeatherListUsecase(NoParams());

    result.fold(
      (failure) {
        weatherListStatus = WeatherListStatus.error;
      },
      (response) {
        if (response.isEmpty) {
          weatherListStatus = WeatherListStatus.empty;
        } else {
          weatherListStatus = WeatherListStatus.loaded;
          mainWeatherInfoList = response;
          searchedWeatherInfoList = mainWeatherInfoList;
        }
      },
    );
    notifyListeners();
  }

  void searchWeatherInfo(String searchText) async {
    weatherListStatus = WeatherListStatus.searching;
    notifyListeners();

    if (searchText.trim().isEmpty) {
      searchedWeatherInfoList = mainWeatherInfoList;
      weatherListStatus = WeatherListStatus.loaded;
    } else {
      searchedWeatherInfoList = [];
      for (int i = 0; i < mainWeatherInfoList.length; i++) {
        final element = mainWeatherInfoList[i];
        if (element.locationInfo.capital.toLowerCase().startsWith(searchText)) {
          searchedWeatherInfoList.add(element);
        }
      }
      if (searchedWeatherInfoList.isEmpty) {
        weatherListStatus = WeatherListStatus.noResult;
      } else {
        weatherListStatus = WeatherListStatus.loaded;
      }
    }
    notifyListeners();
  }
}
