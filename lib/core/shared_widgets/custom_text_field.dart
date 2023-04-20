import 'package:weather_app/core/_core_export.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.height,
    this.hintText = "",
    this.obscureText = false,
    this.onChanged,
    this.controller,
    this.suffix,
    this.color,
    this.hintStyle,
  });

  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final Color? color;
  final bool obscureText;
  final Widget? suffix;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        shadowColor: AppColors.primaryShadowColor,
        elevation: 6,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: AppColors.lightGrey2),
        ),
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextFormField(
            cursorColor: Colors.black,
            obscureText: obscureText,
            onChanged: onChanged,
            controller: controller,
            decoration: InputDecoration(
              hintStyle: hintStyle,
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
