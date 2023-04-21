import 'package:weather_app/core/_core_export.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
    required this.text,
    this.height,
    this.style,
    this.leftPadding,
  });

  final String text;
  final double? height;
  final double? leftPadding;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: leftPadding ?? 0),
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
