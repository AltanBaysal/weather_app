import 'package:weather_app/core/_core_export.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await initExternal();
  await initCore();
  await initFeatures();
}

Future<void> initFeatures() async {
  //providers
  /*
  sl.registerLazySingleton<AuthenticationProvider>(
    () => AuthenticationProvider(
      autoLoginUsecase: sl(),
      emailLogInUsecase: sl(),
      emailSignInUsecase: sl(),
      facebookLoginUsecase: sl(),
      googleLoginUsecase: sl(),
      signOutUsecase: sl(),
      twitterLogInUsecase: sl(),
    ),
  );*/

  //usecases
  //sl.registerLazySingleton<AutoLoginUsecase>(() => AutoLoginUsecase(sl()));

  //repository
  /*
  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(networkInfo: sl()),
  );*/
}

Future<void> initCore() async {
  sl.registerLazySingleton<ScreenSize>(() => ScreenSize());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

Future<void> initExternal() async {
  //TODO make these constant
  sl.registerFactory<Dio>(
    () => Dio(BaseOptions(
      baseUrl: "https://restcountries.com/",
    )),
    instanceName: "restcountries",
  );

  sl.registerFactory<Dio>(
    () => Dio(BaseOptions(
      baseUrl: "https://api.openweathermap.org/data/2.5/",
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
