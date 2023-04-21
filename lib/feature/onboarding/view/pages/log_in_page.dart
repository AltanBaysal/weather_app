import 'package:weather_app/core/_core_export.dart';

class LogInPage extends ConsumerWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LogInProvider logInProvider = ref.read(Providers.logIn.notifier);
    return BaseAuthenticationPage(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: CustomBackButton(),
          ),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(0.0288)),
        HeaderText(
          text: AppTexts.welcomebackGladToSeeYouAgain,
          style: AppTextStyles.title30BoldBlack,
          leftPadding: sl<ScreenSize>().getWidthPercent(.1),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        CustomTextField(
          hintText: AppTexts.enterYourEmail,
          controller: logInProvider.eMailTextEditingController,
          height: sl<ScreenSize>().getHeightPercent(.082),
          obscureText: false,
        ),
        if (logInProvider.isLoginButtonTriggered) ...[
          EmailInputAreaError(
            isError: !logInProvider.isEmailValid,
            isEmpty: logInProvider.eMailTextEditingController.text.isEmpty,
          ),
        ],
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.017)),
        CustomPasswordTextField(
          height: sl<ScreenSize>().getHeightPercent(.082),
          hintText: AppTexts.enterYourPassword,
          controller: logInProvider.passwordTextEditingController,
          textObscure: ref.watch(Providers.logIn).isPasswordObscured,
          onTap: logInProvider.passwordObscuredToggle,
        ),
        if (logInProvider.isLoginButtonTriggered) ...[
          PasswordInputAreaError(
            isError: !logInProvider.isPasswordValid,
            isEmpty: logInProvider.passwordTextEditingController.text.isEmpty,
          ),
        ],
        const Align(
          alignment: Alignment.centerRight,
          child: ForgotPassword(),
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.077)),
        FilledLongButton(
          onTap: () {
            logInProvider.setIsLoginButtonTriggeredTrue();
            sl<AuthenticationProvider>().emailLogIn();
          },
          text: AppTexts.login,
        ),
        SizedBox(height: sl<ScreenSize>().getHeightPercent(.1)),
        TextAndClickableText(
          onTap: () {
            RouteManager.pushNamed(AppRoutes.signInPage);
          },
          text1: AppTexts.dontHaveAnAccount,
          text2: AppTexts.registerNow,
        ),
      ],
    );
  }
}
