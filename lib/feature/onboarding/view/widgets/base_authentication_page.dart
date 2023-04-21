import 'package:weather_app/core/_core_export.dart';

class BaseAuthenticationPage extends StatelessWidget {
  const BaseAuthenticationPage({
    super.key,
    required this.children,
  });

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            25,
            sl<ScreenSize>().getHeightPercent(.062),
            25,
            sl<ScreenSize>().getHeightPercent(.02),
          ),
          child: Center(
            child: Column(
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
