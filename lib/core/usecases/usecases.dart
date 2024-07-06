import 'package:multiple_result/multiple_result.dart';
import '../error/failure.dart';

abstract class UseCase<Type, params> {
  Future<Result<Type, Failure>> call(params params);
}

abstract class UseCaseNoParams<Type> {
  Future<Result<Type, Failure>> call();
}
