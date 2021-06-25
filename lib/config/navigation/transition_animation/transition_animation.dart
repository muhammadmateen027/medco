import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static PageRouteBuilder slide(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = const Offset(0.0, 1.0);
        final end = Offset.zero;
        final curve = Curves.ease;

        final tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder slideRight(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = const Offset(-1, 0);
        final end = Offset.zero;

        final tween = Tween(begin: begin, end: end);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder slideUpRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = const Offset(0, 1);
        final end = Offset.zero;

        final tween = Tween(begin: begin, end: end);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder slideBottomRight(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = const Offset(1, 1);
        final end = Offset.zero;

        final tween = Tween(begin: begin, end: end);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder slideLeft(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = const Offset(1, 0);
        final end = Offset(0, 0);

        final tween = Tween(begin: begin, end: end);

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder scale(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = 0.0;
        final end = 1.0;

        final tween = Tween(begin: begin, end: end);

        return ScaleTransition(
          scale: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static PageRouteBuilder size(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        );
      },
    );
  }

  static PageRouteBuilder enterExit(Widget enterPage, Widget exitPage) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => enterPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return Stack(
          children: <Widget>[
            SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(0.0, 0.0),
                end: const Offset(-1.0, 0.0),
              ).animate(animation),
              child: exitPage,
            ),
            SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: enterPage,
            )
          ],
        );
      },
    );
  }
}
