import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/widgets/imageLink.dart';
import 'package:flutter/material.dart';

class AppDescText extends StatelessWidget {
  const AppDescText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        constraints: BoxConstraints(maxWidth: 520),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(50),
            //title
            Text(
              'Stay Hydrated',
              style: textExtraLargeStyle.copyWith(color: mainBlue),
              textAlign: TextAlign.start,
            ),
            UIHelper.verticalSpaceLarge(),
            //subtitle
            Text(
              'Benefit from better sleep, cognition and mood, by tracking your fluid intake and staying hydrated with reminders, analytics and more!',
              style: textMediumStyle,
              textAlign: TextAlign.start,
            ),
            UIHelper.verticalSpaceMedium(),
            Row(
              children: [
                ImageLink(
                  url: 'https://apps.apple.com/gb/app/fluidify/id1574540383',
                  imagePath: 'assets/appStoreBtn.png',
                  imageScale: 0.9,
                ),
                UIHelper.horizontalSpaceSmall(),
                ImageLink(
                  url:
                      'https://play.google.com/store/apps/details?id=com.jackwradford.fluidtracker',
                  imagePath: 'assets/googlePlayBadge.png',
                  imageScale: 3.9,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
