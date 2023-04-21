import 'package:weather_app/core/_core_export.dart';

class SignInProvider extends ChangeNotifier {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController eMailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  bool isSignInButtonTriggered = false;
  void setIsSignInButtonTriggeredTrue() {
    isSignInButtonTriggered = true;
    notifyListeners();
  }

  bool isPasswordObscured = true;
  void passwordObscuredToggle() {
    isPasswordObscured = !isPasswordObscured;
    notifyListeners();
  }

  bool isConfirmPasswordObscured = true;

  void confirmPasswordObscuredToggle() {
    isConfirmPasswordObscured = !isConfirmPasswordObscured;
    notifyListeners();
  }

  bool get isEmailValid {
    return ValidatorUtil.isEmailValid(eMailTextEditingController.text);
  }

  bool get isPasswordValid {
    return ValidatorUtil.isPasswordValid(passwordTextEditingController.text);
  }

  bool get isConfirmPasswordValid {
    return ValidatorUtil.isPasswordValid(
      confirmPasswordTextEditingController.text,
    );
  }

  bool get isPasswordsConfirmed {
    return confirmPasswordTextEditingController.text ==
        passwordTextEditingController.text;
  }

  bool get isFormValid {
    return (isEmailValid &&
        isPasswordValid &&
        isConfirmPasswordValid &&
        isPasswordsConfirmed);
  }
}
