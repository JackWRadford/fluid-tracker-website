import 'package:fluid_tracker_site/myRoutes.dart';
import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/views/aboutView.dart';
import 'package:fluid_tracker_site/views/homeView.dart';
import 'package:flutter/material.dart';

void main() {
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
      routes: {
        homeRoute: (context) => HomeView(),
        aboutRoute: (context) => AboutView(),
      },
      initialRoute: homeRoute,
      //stop native os from scaling text
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1.0,
          ),
          child: child!,
        );
      },
    );
  }
}
