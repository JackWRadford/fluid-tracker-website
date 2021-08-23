import 'package:fluid_tracker_site/myRoutes.dart';
import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:fluid_tracker_site/widgets/textLink.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          UIHelper.verticalSpaceMedium(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: mediumPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //icon
                    SizedBox(
                      width: 40,
                      child: Image.asset(
                        'appIcon.png',
                      ),
                    ),
                    UIHelper.horizontalSpaceSmall(),
                    //app title
                    Text(
                      'Fluidify',
                      style: textLargeStyle.copyWith(color: mainBlue),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //links
                    TextLink(
                      label: 'About',
                      onpress: () {
                        Navigator.pushNamed(
                          context,
                          aboutRoute,
                        );
                      },
                    ),

                    UIHelper.horizontalSpaceMedium(),
                    TextLink(
                      label: 'Contact',
                      onpress: () {
                        print(Uri.base);
                      },
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
