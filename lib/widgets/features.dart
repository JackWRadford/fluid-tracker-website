import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:fluid_tracker_site/widgets/featureItem.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: largePadding,
      ),
      constraints: BoxConstraints(
        maxWidth: 1200,
      ),
      child: ResponsiveGridList(
        scroll: false,
        desiredItemWidth: 300,
        minSpacing: 1,
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
    );
  }
}
