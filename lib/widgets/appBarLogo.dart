import 'package:fluid_tracker_site/widgets/appBarLogo_mobile.dart';
import 'package:fluid_tracker_site/widgets/appBarLogo_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppBarLogoMobile(),
      tablet: AppBarLogoTabletDesktop(),
      desktop: AppBarLogoTabletDesktop(),
    );
  }
}
