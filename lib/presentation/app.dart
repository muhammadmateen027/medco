import 'package:bot_toast/bot_toast.dart';
import 'package:medical_suit/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../blocs/blocs.dart';
import '../constants/constants.dart';
import '../repository/repository.dart';

// ignore: must_be_immutable
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: locator<RepositoryInterface>(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (_) => AuthenticationBloc(locator<RepositoryInterface>()),
          ),
        ],
        child: MaterialApp(
          title: 'Teleportal',
          themeMode: ThemeMode.light,
          navigatorKey: navigationService.navigationKey,
          theme: AppTheme.lightTheme(Theme.of(context)),
          builder: EasyLoading.init(builder: BotToastInit()),
          debugShowCheckedModeBanner: true,
          initialRoute: RoutesName.initial,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}

