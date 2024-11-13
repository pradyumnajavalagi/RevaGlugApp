
abstract class AuthState {}

class AuthenticationInitial extends AuthState {}

class AuthenticationInProgress extends AuthState {}

class AuthenticationSuccess extends AuthState {}

class AuthenticationFailure extends AuthState {
  final String error;
  AuthenticationFailure(this.error);
}