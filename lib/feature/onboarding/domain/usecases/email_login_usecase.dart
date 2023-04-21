import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class EmailLogInUsecase implements UseCase<UserCredential, EmailLogInParam> {
  final AuthenticationRepository authenticationRepository;

  EmailLogInUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, UserCredential>> call(EmailLogInParam params) {
    return authenticationRepository.emailLogIn(params);
  }
}
