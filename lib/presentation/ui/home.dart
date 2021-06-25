import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_suit/blocs/blocs.dart';
import 'package:medical_suit/config/config.dart';
import 'package:medical_suit/services/services.dart';
import 'package:supabase/supabase.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final currentUser = GetIt.instance<SupabaseClient>().auth.user();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi ${currentUser?.email}'),
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
        ),
      ),
    );
  }
}