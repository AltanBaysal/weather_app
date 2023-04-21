import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserCredential>> emailLogIn(EmailLogInParam params);
  Future<Either<Failure, void>> emailSignIn(EmailSignInParam params);
}
