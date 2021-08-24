import 'package:fluid_tracker_site/locator.dart';
import 'package:fluid_tracker_site/routing/myRoutes.dart';
import 'package:fluid_tracker_site/routing/router.dart';
import 'package:fluid_tracker_site/services/nav_service.dart';
import 'package:fluid_tracker_site/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MyAppBar(),
          //main content
          Flexible(
            child: Navigator(
              key: locator<NavService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: homeRoute,
            ),
          ),
        ],
      ),
    );
  }
}
