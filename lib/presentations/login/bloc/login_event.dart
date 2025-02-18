part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginSubmitted extends LoginEvent {
  final String phone;
  final String password;
  final BuildContext context; // Add context here

  LoginSubmitted({
    required this.phone,
    required this.password,
    required this.context,
  });
}
class CountryCodeEvent extends LoginEvent {
  final String initialCountry;


  CountryCodeEvent({required this.initialCountry});
}