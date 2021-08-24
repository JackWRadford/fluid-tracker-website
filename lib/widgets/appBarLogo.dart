import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
