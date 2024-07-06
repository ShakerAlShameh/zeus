abstract class Failure {
  final String message;
  const Failure({required this.message});
}

class NetworkFailure extends Failure {
  const NetworkFailure({required super.message});
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

class AuthFailure extends Failure {
  const AuthFailure({required super.message});
}

class UnExpectedFailure extends Failure {
  const UnExpectedFailure({required super.message});
}

class NotificationFailure extends Failure {
  const NotificationFailure({required super.message});
}

class EmptyFailure extends Failure {
  const EmptyFailure({required super.message});
}
