part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {
  const AuthenticationState();

  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class ViewDocumentForm extends AuthenticationState {}
class ViewPersonalInfoForm extends AuthenticationState {}
class ViewBankInfoForm extends AuthenticationState {}
class ViewVehicleInfoForm extends AuthenticationState {}
class ViewQuestionnaireForm extends AuthenticationState {}

