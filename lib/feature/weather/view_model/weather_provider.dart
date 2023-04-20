import 'package:weather_app/core/_core_export.dart';

class WeatherProvider extends ChangeNotifier {
  final FetchlWeatherListUsecase fetchlWeatherListUsecase;
  WeatherProvider({required this.fetchlWeatherListUsecase});

  TextEditingController searchTextEditingController = TextEditingController();
  List<LocationWeatherInfo> mainWeatherInfoList = [];
  List<LocationWeatherInfo> searchedWeatherInfoList = [];
  WeatherListStatus weatherListStatus = WeatherListStatus.loading;

  Future<void> fetchWeatherInfoList() async {
    weatherListStatus = WeatherListStatus.loading;
    notifyListeners();

    final result = await fetchlWeatherListUsecase(NoParams());

    result.fold(
      (failure) {
        weatherListStatus = WeatherListStatus.error;
      },
      (result) {
        if (result.isEmpty) {
          weatherListStatus = WeatherListStatus.empty;
        } else {
          weatherListStatus = WeatherListStatus.loaded;
          mainWeatherInfoList = result;
        }
      },
    );
    notifyListeners();
  }

  void searchWeatherInfo() async {
    weatherListStatus = WeatherListStatus.searching;
    notifyListeners();
    final String searchText = searchTextEditingController.text;
    print(searchText.trim());
    if (searchText.trim().isEmpty) {
      searchedWeatherInfoList = mainWeatherInfoList;
      weatherListStatus = WeatherListStatus.loaded;
    } else {
      for (var element in mainWeatherInfoList) {
        if (element.locationInfo.capital.contains(searchText)) {
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
