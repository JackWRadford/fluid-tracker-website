import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/widgets/featureItem.dart';
import 'package:fluid_tracker_site/widgets/imageLink.dart';
import 'package:fluid_tracker_site/widgets/myAppBar.dart';
import 'package:fluid_tracker_site/widgets/myFooter.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74),
        child: MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            UIHelper.verticalSpace(70),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 520,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.verticalSpace(100),
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
                      ImageLink(
                        url:
                            'https://apps.apple.com/gb/app/fluidify/id1574540383',
                        imagePath: 'appStoreBtn.png',
                      ),
                    ],
                  ),
                ),
                UIHelper.horizontalSpace(100),
                //preview image
                Image.asset(
                  'preview.png',
                  scale: 1.1,
                ),
              ],
            ),
            UIHelper.verticalSpace(80),
            //list of features
            Flexible(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: (MediaQuery.of(context).size.width / 3) * 2.5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeatureItem(
                          title: 'Hydration Reminders',
                          desc:
                              'Simple notification reminders at intervals throughout your day to remind you to stay hydrated.',
                        ),
                        FeatureItem(
                          title: 'Goal Streaks',
                          desc:
                              'Streaks can help you create a habit out of drinking more fluid and staying hydrated.',
                        ),
                        FeatureItem(
                          title: 'Intake Analytics',
                          desc:
                              'Analytics to show your fluid intake, including: water intake over time, most consumed types of drinks and average water intake per day.',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeatureItem(
                          title: 'Absorbed Water Coefficients',
                          desc:
                              'Rough estimates of the percentage of absorbed water in different drink types allows for more accurate hydration tracking.',
                        ),
                        FeatureItem(
                          title: 'Many Different Drink Types',
                          desc:
                              'There are over 100 different drink types supported and more coming soon, to help you track what your drinking.',
                        ),
                        FeatureItem(
                          title: 'More Features to Come Soon',
                          desc:
                              'Fluidify is still being actively developed and added to. Future updates include: home screen widgets, better notifications and HealthKit support.',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(100),
            //footer
            MyFooter(),
          ],
        ),
      ),
    );
  }
}
