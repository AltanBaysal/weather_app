import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

//todo service locatordan al
class AuthenticationProvider extends ChangeNotifier {
  final EmailLogInUsecase emailLogInUsecase;
  final EmailSignInUsecase emailSignInUsecase;

  AuthenticationProvider({
    required this.emailLogInUsecase,
    required this.emailSignInUsecase,
  });

  AuthenticationMode mode = AuthenticationMode.auth;

  Future<void> emailSignIn() async {
    final signInProvider = AppProviderContainer.instance.read(Providers.signIn);
    if (signInProvider.isFormValid) {
      final emailSignInParam = EmailSignInParam(
        name: signInProvider.userNameTextEditingController.text,
        email: signInProvider.eMailTextEditingController.text,
        password: signInProvider.passwordTextEditingController.text,
      );
      _logIn(() async {
        return await emailSignInUsecase(emailSignInParam);
      });
    }
  }

  Future<void> emailLogIn() async {
    final logInProvider = AppProviderContainer.instance.read(Providers.logIn);
    if (logInProvider.isFormValid) {
      final emailLogInParam = EmailLogInParam(
        email: logInProvider.eMailTextEditingController.text,
        password: logInProvider.passwordTextEditingController.text,
      );

      _logIn(() async {
        return await emailLogInUsecase(emailLogInParam);
      });
    }
  }

  //
  Future<void> _logIn<T>(
    Future<Either<Failure, T>> Function() func,
  ) async {
    mode = AuthenticationMode.inProgress;
    notifyListeners();
    _showLoadingDialog();

    final resultEither = await func();

    RouteManager.back();
    resultEither.fold(
      (left) {
        _showSnackBar(left.message ?? AppTexts.somethingWentWrong);
      },
      (right) {
        mode = AuthenticationMode.loggedIn;
        RouteManager.pushReplacementNamed(AppRoutes.homePage);
      },
    );
  }

  Future<void> _showLoadingDialog() async {
    await showDialog(
      context: GlobalContextKey.instance.globalKey.currentContext!,
      barrierDismissible: false,
      builder: (final _) => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  Future<void> _showSnackBar(String text) async {
    ScaffoldMessenger.of(GlobalContextKey.instance.globalKey.currentContext!)
        .showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.only(bottom: 64),
        backgroundColor: Color.fromARGB(189, 255, 135, 135),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        content: Container(
          height: sl<ScreenSize>().getHeightPercent(.04),
          width: sl<ScreenSize>().getWidthPercent(.3),
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTextStyles.poppins18SemiBold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
