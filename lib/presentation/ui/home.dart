import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_suit/blocs/blocs.dart';
import 'package:medical_suit/presentation/global/global.dart';

class MyHomePage extends BasePage {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseState<MyHomePage> with BasicPage {

  @override
  void initState() {
    context.read<AuthenticationBloc>()..add(LoadUser());
    super.initState();
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (_, state) {
              if (state is UserView) {
                return Text('Hi ${state.user.email}');
              }
              return SizedBox();
            },
          ),
          SizedBox(height: 30),
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

  @override
  List<Widget>? appBarActions() => null;
}
