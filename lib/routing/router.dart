import 'package:fluid_tracker_site/routing/myRoutes.dart';
import 'package:fluid_tracker_site/views/homeView.dart';
import 'package:fluid_tracker_site/views/privacyView.dart';
import 'package:fluid_tracker_site/views/termsView.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(HomeView(), settings);
    case privacyRoute:
      return _getPageRoute(PrivacyView(), settings);
    case termsRoute:
      return _getPageRoute(TermsView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(
    child: child,
    routeName: settings.name!,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({
    required this.child,
    required this.routeName,
  }) : super(
          transitionDuration: Duration(microseconds: 0),
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
