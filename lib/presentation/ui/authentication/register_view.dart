import 'package:flutter/material.dart';
import 'package:medical_suit/blocs/blocs.dart';
import 'package:medical_suit/config/config.dart';
import 'package:medical_suit/constants/constants.dart';
import 'package:medical_suit/presentation/global/global.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      backgroundColor: Color(0XFF181818),
    );
  }

  Widget _buildBody(context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 120),
          Assets.images.supaBaseImage,
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Card(
              elevation: 1,
              child: Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: AppTextField(
                          controller: _emailController,
                          hintText: 'Email',
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return null;
                            }
                            if (!value.contains('@')) {
                              return 'Invalid e-mail';
                            }
                          },
                        )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child : AppTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                          obscureText: true,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return null;
                            }
                          },
                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: AppTextField(
                          controller: TextEditingController(),
                          hintText: 'Password',
                          obscureText: true,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return null;
                            }

                            if (value != _passwordController.text) {
                              return 'Passwords don\'t match';
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: size.width,
                        height: 45,
                        child: MaterialButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              SignUp event = SignUp(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );

                              context.read<AuthenticationBloc>().add(event);
                            }
                          },
                          color: Colors.black,
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(RoutesName.login);
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
