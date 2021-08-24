import 'package:fluid_tracker_site/routing/myRoutes.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:fluid_tracker_site/widgets/appBarLogo.dart';
import 'package:fluid_tracker_site/widgets/textLink.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: largePadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBarLogo(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //links
                    TextLink(
                      label: 'About',
                      navPath: aboutRoute,
                    ),

                    UIHelper.horizontalSpaceMedium(),
                    TextLink(
                      label: 'Contact',
                      navPath: contactRoute,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
