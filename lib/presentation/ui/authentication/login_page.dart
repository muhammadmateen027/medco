import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:medical_suit/blocs/blocs.dart';
import 'package:medical_suit/config/config.dart';
import 'package:medical_suit/constants/constants.dart';
import 'package:medical_suit/presentation/global/global.dart';

import 'widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late ThemeData themeData;
  String? prefix = '60';

  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();

  Widget _title() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedImage(),
          Text(
            'MedCo',
            style: themeData.textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w700,
              color: themeData.secondaryHeaderColor,
            ),
          ),
          Text(
            'Your doctor is at next step',
            style: themeData.textTheme.caption,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    return Material(
      color: Colors.black54,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: themeData.scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 60),
                  _title(),
                  SizedBox(height: 50),
                  Text(
                    'Login your email',
                    style: themeData.textTheme.headline5,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Enter your email or signup with google/apple account.',
                    style: themeData.textTheme.bodyText2,
                  ),
                  SizedBox(height: 28),
                  AppTextField(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  SizedBox(height: 12),
                  AppTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      child: Text('Login now'),
                      color: themeData.secondaryHeaderColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if (emailController!.text.isEmpty) {
                          EasyLoading.instance..maskColor = Colors.red;
                          EasyLoading.showToast('Email required',
                              dismissOnTap: true);
                          return;
                        }

                        if (emailController!.text.isEmpty) {
                          EasyLoading.instance..maskColor = Colors.red;
                          EasyLoading.showToast('Password required',
                              dismissOnTap: true);
                          return;
                        }

                        SignIn event = SignIn(
                          email: emailController!.text,
                          password: passwordController!.text,
                        );

                        context.read<AuthenticationBloc>().add(event);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: themeData.textTheme.bodyText2,
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(RoutesName.signup);
                        },
                        child: Text(
                          'Signup',
                          style: themeData.textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
