import 'package:weather_app/core/_core_export.dart';

class InputAreaError extends StatelessWidget {
  const InputAreaError({
    super.key,
    this.padding = EdgeInsets.zero,
    this.error = true,
    this.space = 5,
    this.iconSizePercentage,
    this.text = "",
  });

  final EdgeInsetsGeometry padding;
  final bool error;
  final String text;
  final double? space;
  final double? iconSizePercentage;

  @override
  Widget build(BuildContext context) {
    if (!error) return const SizedBox.shrink();
    return Padding(
      padding: padding,
      child: Row(
        children: [
          AppSvgPicture(
            svg: AppIconPaths.error,
            percentage: iconSizePercentage ?? 0.016,
          ),
          SizedBox(width: space),
          Text(
            text,
            style: AppTextStyles.poppins12SemiBold.copyWith(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
