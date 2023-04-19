import 'package:dartz/dartz.dart';
import 'package:weather_app/core/_core_export.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
