import 'package:fluid_tracker_site/widgets/appDesc_desktop.dart';
import 'package:fluid_tracker_site/widgets/appDesc_mobile_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppDesc extends StatelessWidget {
  const AppDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDescMobileTablet(),
      tablet: AppDescMobileTablet(),
      desktop: AppDescDesktop(),
    );
  }
}
