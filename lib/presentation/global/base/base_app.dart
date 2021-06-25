import 'package:flutter/material.dart';

abstract class BasePage extends StatefulWidget {
  BasePage({Key? key}) : super(key: key);
}

abstract class BaseState<Page extends BasePage> extends State<Page> {
  String screenName();

  List<Widget>? appBarActions();
}

mixin BasicPage<Page extends BasePage> on BaseState<Page> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(screenName()),
            actions: appBarActions(),
          ),
          floatingActionButton: fab(),
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            elevation: 0.0,
            child: Text(
              'ABCDEFGH',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 10.0),
              textAlign: TextAlign.center,
            ),
          ),
          body: body(context),
        ),
      ),
    );
  }

  Widget fab() => Container();

  Widget body(BuildContext context);
}
