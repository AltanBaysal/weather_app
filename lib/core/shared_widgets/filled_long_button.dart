import 'package:weather_app/core/_core_export.dart';

class FilledLongButton extends StatelessWidget {
  const FilledLongButton({
    required this.onTap,
    required this.text,
    this.color,
    super.key,
  });

  final void Function() onTap;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? AppColors.darkPurple,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        alignment: Alignment.center,
        height: sl<ScreenSize>().getHeightPercent(.072),
        child: Text(
          text,
          style: AppTextStyles.inter14Regular.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
