import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:medical_suit/config/config.dart';
import 'package:medical_suit/services/services.dart';
import 'package:meta/meta.dart';

import '../../repository/repository_interface.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(this.repo) : super(AuthenticationInitial());
  final RepositoryInterface repo;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticationStarted) {
      locator<Storage>().hasToken();
      return;
    }

    if (event is SignIn) {
      yield* _signInToState(event);
      return;
    }
    if (event is SignUp) {
      yield* _signUpToState(event);
      return;
    }
    if (event is SignOut) {
      yield* _signOutToState();
      return;
    }
  }

  Stream<AuthenticationState> _signInToState(SignIn event) async* {
    final result = await repo.signIn(event.email, event.password);

    if (result.data != null) {
      bool userSaved = await locator<Storage>().setString(
        key: dotenv.env['AUTH'].toString(),
        value: result.data!.persistSessionString,
      );

      if (userSaved) {
        navigationService.pushReplacementNamed(RoutesName.home);
        return;
      }

      BotToast.showText(text: 'Unable to save in app');
      return;
    }

    BotToast.showText(text: result.error?.message);
    return;
  }

  Stream<AuthenticationState> _signUpToState(SignUp event) async* {
    final result = await repo.signUp(event.email, event.password);

    if (result.data != null) {
      BotToast.showText(text: 'Successfully registered.');

      navigationService.pushReplacementNamed(RoutesName.home);
      return;
    }

    BotToast.showText(text: result.error?.message);
    return;
  }

  Stream<AuthenticationState> _signOutToState() async* {
    await repo.signOut();
    await locator<Storage>().clearSession();
    return;
  }
}
