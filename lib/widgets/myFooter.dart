import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/widgets/textLink.dart';
import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainBlue,
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
                  TextLink(label: 'Privacy Policy', onpress: () {}),
                  UIHelper.horizontalSpaceMedium(),
                  TextLink(label: 'Terms of Use', onpress: () {}),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              Text(
                '© 2021 Jack Radford. All Rights Reserved',
                style: textTinyStyle,
              ),
              UIHelper.verticalSpaceMedium(),
            ],
          ),
        ],
      ),
    );
  }
}
