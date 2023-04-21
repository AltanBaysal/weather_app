import 'package:weather_app/core/_core_export.dart';

class CustomPasswordTextField extends StatelessWidget {
  const CustomPasswordTextField({
    super.key,
    required this.hintText,
    this.textObscure = true,
    this.onChanged,
    this.onTap,
    this.controller,
    this.height,
  });

  final String hintText;
  final Function(String)? onChanged;
  final void Function()? onTap;
  final TextEditingController? controller;
  final bool textObscure;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      height: height,
      onChanged: onChanged,
      hintText: hintText,
      controller: controller,
      obscureText: textObscure,
      suffix: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: AppSvgPicture(
            color: Colors.grey,
            svg: textObscure ? AppIconPaths.closedEye : AppIconPaths.openedEye,
          ),
        ),
      ),
    );
  }
}
