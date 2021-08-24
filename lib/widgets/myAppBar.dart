import 'package:fluid_tracker_site/widgets/appBar_mobile.dart';
import 'package:fluid_tracker_site/widgets/appBar_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppBarMobile(),
      tablet: AppBarTabletDesktop(),
      desktop: AppBarTabletDesktop(),
    );
  }
}
