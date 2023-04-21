import 'package:weather_app/core/_core_export.dart';

class EmailInputAreaError extends StatelessWidget {
  const EmailInputAreaError({
    super.key,
    this.isError = false,
    this.isEmpty = false,
  });

  final bool isError;
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return const InputAreaError(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        text: AppTexts.required,
      );
    }
    if (isError) {
      return const InputAreaError(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        text: AppTexts.invalidEmailFormat,
      );
    }
    return const SizedBox.shrink();
  }
}
