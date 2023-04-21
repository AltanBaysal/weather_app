import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class EmailSignInUsecase implements UseCase<void, EmailSignInParam> {
  final AuthenticationRepository authenticationRepository;

  EmailSignInUsecase(this.authenticationRepository);

  @override
  Future<Either<Failure, void>> call(EmailSignInParam params) {
    return authenticationRepository.emailSignIn(params);
  }
}
