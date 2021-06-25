import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_suit/blocs/blocs.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    context.read<AuthenticationBloc>()..add(AuthenticationStarted());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color appColor = Theme.of(context).secondaryHeaderColor;

    CircularProgressIndicator progressbar = CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(appColor),
      backgroundColor: Colors.transparent,
    );

    return Material(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Center(child: progressbar),
      ),
    );
  }
}
