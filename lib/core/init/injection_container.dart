import 'package:weather_app/core/_core_export.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initExternal();
  await initCore();
  await initFeatures();
}

Future<void> initFeatures() async {
  //providers
  sl.registerLazySingleton<WeatherProvider>(
    () => WeatherProvider(fetchlWeatherListUsecase: sl()),
  );

  //usecases
  sl.registerLazySingleton<FetchlWeatherListUsecase>(
    () => FetchlWeatherListUsecase(sl()),
  );

  //repository
  sl.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
      networkInfo: sl(),
      weatherRemoteDataSource: sl(),
    ),
  );

  //datasources
  sl.registerLazySingleton<WeatherRemoteDataSource>(
    () => WeatherRemoteDataSourceImpl(),
  );
}

Future<void> initCore() async {
  sl.registerLazySingleton<ScreenSize>(() => ScreenSize());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

Future<void> initExternal() async {
  sl.registerFactory<Dio>(
    () => Dio(BaseOptions(
      baseUrl: "https://restcountries.com/",
    )),
    instanceName: "restcountries",
  );

  sl.registerFactory<Dio>(
    () => Dio(BaseOptions(
      baseUrl: "https://api.openweathermap.org/",
    )),
    instanceName: "openweathermap",
  );

  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker(),
  );
}
