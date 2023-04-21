import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final NetworkInfo networkInfo;
  final OnboardingLocalDataSource onboardingDataSource;

  AuthenticationRepositoryImpl({
    required this.networkInfo,
    required this.onboardingDataSource,
  });

  @override
  Future<Either<Failure, UserCredential>> emailLogIn(
    EmailLogInParam params,
  ) async {
    return _errorHandler<UserCredential>(
      () async {
        final credential = await onboardingDataSource.getUserCredential(params);
        return Right(credential);
      },
    );
  }

  @override
  Future<Either<Failure, void>> emailSignIn(
    EmailSignInParam params,
  ) async {
    return _errorHandler<void>(
      () async {
        return Right(await onboardingDataSource.cacheUserCredential(params));
      },
    );
  }

  Future<Either<Failure, T>> _errorHandler<T>(
    Future<Either<Failure, T>> Function() func,
  ) async {
    if (!await networkInfo.isConnected) {
      return Left(NoInternetConnectionFailure());
    }
    try {
      return await func();
    } on WrongEmailOrPasswordFailure {
      return Left(WrongEmailOrPasswordFailure());
    } catch (e) {
      return Left(UnImplementedFailure());
    }
  }
}
