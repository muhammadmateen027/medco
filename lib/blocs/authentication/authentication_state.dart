part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {
  const AuthenticationState();

  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class UserView extends AuthenticationState {
  final User user;

  UserView(this.user);

  @override
  List<Object> get props => [user];
}

