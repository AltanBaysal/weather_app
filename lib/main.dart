import 'package:weather_app/core/_core_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  sl.allReady().then(
    (value) async {
      sl<WeatherProvider>().fetchWeatherInfoList();
      runApp(
        const ProviderScope(child: WeatherApp()),
      );
    },
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        sl<ScreenSize>().screenSize = MediaQuery.of(context);
        return child ?? const ErrorPage();
      },
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      title: AppTexts.appName,
      navigatorKey: GlobalContextKey.instance.globalKey,
      initialRoute: AppRoutes.logInPage,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
