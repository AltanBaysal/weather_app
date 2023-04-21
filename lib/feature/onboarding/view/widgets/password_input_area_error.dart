import 'package:weather_app/core/_core_export.dart';

class PasswordInputAreaError extends StatelessWidget {
  const PasswordInputAreaError({
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
        text: AppTexts.invalidPasswordFormat,
      );
    }
    return const SizedBox.shrink();
  }
}
