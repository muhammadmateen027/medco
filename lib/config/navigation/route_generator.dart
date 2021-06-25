import 'package:flutter/material.dart';
import 'package:medical_suit/presentation/ui/ui.dart';

import 'routes_name.dart';
import 'transition_animation/transition_animation.dart';

class RouteGenerator {
  // TODO: Uncomment when add repository and remove static keyword
  // final UserRepositoryInterface userRepository;
  // RouteGenerator(this.userRepository) : super();

  static Route<dynamic> generateRoute(RouteSettings setting) {
    final args = setting.arguments;
    switch (setting.name) {
      case RoutesName.initial:
        return AppRoutes.slideUpRoute(SplashPage());

      case RoutesName.login:
        return AppRoutes.slideUpRoute(LoginPage());

      case RoutesName.signup:
        return AppRoutes.slideUpRoute(RegisterView());

      case RoutesName.home:
        return AppRoutes.slideUpRoute(MyHomePage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Not available'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Text(
              'You requested page is not available at the moment.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    });
  }
}
