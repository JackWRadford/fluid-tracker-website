// import 'package:fluid_tracker_site/locator.dart';
import 'package:fluid_tracker_site/routing/myRoutes.dart';
import 'package:fluid_tracker_site/routing/router.dart';
import 'package:fluid_tracker_site/services/nav_service.dart';
import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/views/layout_template.dart';
import 'package:flutter/material.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluidify - Water Tracker and Reminder',
      theme: darkTheme,
      //stop native os from scaling text
      // builder: (BuildContext context, Widget? child) {
      //   return MediaQuery(
      //     data: MediaQuery.of(context).copyWith(
      //       textScaleFactor: 1.0,
      //     ),
      //     child: child!,
      //   );
      // },
      builder: (context, child) => LayoutTemplate(
        child: child!,
      ),

      navigatorKey: locator<NavService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}
