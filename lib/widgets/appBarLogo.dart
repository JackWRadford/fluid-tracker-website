import 'package:fluid_tracker_site/locator.dart';
import 'package:fluid_tracker_site/routing/myRoutes.dart';
import 'package:fluid_tracker_site/services/nav_service.dart';
import 'package:fluid_tracker_site/widgets/appBarLogo_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        locator<NavService>().navigateTo(homeRoute);
      },
      child: ScreenTypeLayout(
        mobile: AppBarLogoTabletDesktop(),
        tablet: AppBarLogoTabletDesktop(),
        desktop: AppBarLogoTabletDesktop(),
      ),
    );
  }
}
