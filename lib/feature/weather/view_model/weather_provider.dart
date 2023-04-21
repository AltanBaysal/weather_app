import 'package:weather_app/core/_core_export.dart';

class WeatherProvider extends ChangeNotifier {
  //final FetchlWeatherListUsecase fetchlWeatherListUsecase;
  final FetchLocationInfoListUsecase fetchLocationInfoListUsecase;
  final FetchlWeatherInfoUsecase fetchlWeatherInfoUsecase;

  WeatherProvider({
    //required this.fetchlWeatherListUsecase,
    required this.fetchLocationInfoListUsecase,
    required this.fetchlWeatherInfoUsecase,
  });

  int pageViewInitialPage = 0;
  List<LocationWeatherInfo> mainWeatherInfoList = [];
  List<LocationWeatherInfo> searchedWeatherInfoList = [];
  WeatherListStatus weatherListStatus = WeatherListStatus.loading;

  Future<void> fetchWeatherInfoList() async {
    weatherListStatus = WeatherListStatus.loading;
    notifyListeners();

    final result = await fetchLocationInfoListUsecase(NoParams());
    result.fold(
      (failure) {
        weatherListStatus = WeatherListStatus.error;
      },
      (locationInfoList) async {
        if (locationInfoList.isEmpty) {
          weatherListStatus = WeatherListStatus.empty;
        } else {
          for (var locationInfo in locationInfoList) {
            final response = await fetchlWeatherInfoUsecase(
              FetchWeatherInfoParam(locationInfo.capital),
            );

            response.fold(
              (l) {},
              (weatherInfo) {
                mainWeatherInfoList.add(LocationWeatherInfo(
                  locationInfo: locationInfo,
                  weatherInfo: weatherInfo,
                ));
              },
            );
            searchedWeatherInfoList = mainWeatherInfoList;
            notifyListeners();
          }
          weatherListStatus = WeatherListStatus.loaded;
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
