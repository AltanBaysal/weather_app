import 'dart:convert';

import 'package:weather_app/core/_core_export.dart';

abstract class OnboardingLocalDataSource {
  Future<UserCredentialModel> getUserCredential(
    EmailLogInParam emailLogInParam,
  );
  Future<void> cacheUserCredential(EmailSignInParam emailSignInParam);
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  final SharedPreferences sharedPreferences;

  OnboardingLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheUserCredential(EmailSignInParam emailSignInParam) async {
    await sharedPreferences.setString(
      emailSignInParam.email,
      //TODO Improve
      jsonEncode({
        "name": emailSignInParam.name,
        "email": emailSignInParam.email,
        "password": emailSignInParam.password,
      }),
    );
  }

  @override
  Future<UserCredentialModel> getUserCredential(
    EmailLogInParam emailLogInParam,
  ) async {
    final json = sharedPreferences.getString(emailLogInParam.email);
    if (json != null) {
      final credential = UserCredentialModel.fromJson(jsonDecode(json));
      if (credential.password == emailLogInParam.password) {
        return credential;
      }
    }
    throw WrongEmailOrPasswordFailure();
  }
}
