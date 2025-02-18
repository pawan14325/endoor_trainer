part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class CountryCodeUpdated extends LoginState {
  final String countryCode;

  CountryCodeUpdated({required this.countryCode});
}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginModel message;

  LoginSuccess(this.message);
}class LoginFailure extends LoginState {
  final String message;

  LoginFailure(this.message);
}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}
