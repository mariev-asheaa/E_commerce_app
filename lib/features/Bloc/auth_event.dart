part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}
class LoginEvent extends AuthEvent{
  final String email;
  final String password;
  LoginEvent({required this.email,required this.password});
}

class RegisterEvent extends AuthEvent{
 final String email;
 final String password;
 final String name;
 final String phone;
  RegisterEvent({required this.email,required this.password,required this.name,required this.phone});

}
class GoogleSignInEvent extends AuthEvent {}

class SignOutEvent extends AuthEvent {}