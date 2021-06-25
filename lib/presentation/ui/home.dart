import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_suit/blocs/blocs.dart';
import 'package:medical_suit/config/config.dart';
import 'package:medical_suit/presentation/global/global.dart';
import 'package:supabase/supabase.dart';

class MyHomePage extends BasePage {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseState<MyHomePage> with BasicPage{
  late User? user;
  @override
  void initState()  {
    user = locator<SupabaseClient>().auth.user();
    super.initState();
  }

  @override
  Widget body(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hi ${user?.email}'),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              context.read<AuthenticationBloc>().add(SignOut());
            },
            child: Text('Logout'),
          )
        ],
      ),
    );
  }

  @override
  String screenName() => 'Home';
}