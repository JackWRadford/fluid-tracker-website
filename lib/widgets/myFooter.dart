import 'package:fluid_tracker_site/routing/myRoutes.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/widgets/textLink.dart';
import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UIHelper.verticalSpaceMedium(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextLink(
                    label: 'Privacy Policy',
                    navPath: privacyRoute,
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  TextLink(
                    label: 'Terms & Conditions',
                    navPath: termsRoute,
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              Text(
                '© 2021 Jack Radford. All Rights Reserved',
                style: textTinyStyle,
              ),
              UIHelper.verticalSpaceLarge(),
            ],
          ),
        ],
      ),
    );
  }
}
