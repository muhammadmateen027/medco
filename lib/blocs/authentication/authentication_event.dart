part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {
  const AuthenticationEvent();

  List<Object> get props => [];
}

class AuthenticationStarted extends AuthenticationEvent {}

class LoadUser extends AuthenticationEvent {}

class SignIn extends AuthenticationEvent {
  final String email;
  final String password;

  SignIn({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class SignUp extends AuthenticationEvent {
  final String email;
  final String password;

  SignUp({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class SignOut extends AuthenticationEvent {}
