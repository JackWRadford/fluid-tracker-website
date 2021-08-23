import 'package:fluid_tracker_site/shared/app_colors.dart';
import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  final String title;
  final String desc;

  FeatureItem({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(mediumPadding),
      padding: const EdgeInsets.all(0),
      width: 400,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: mainBlue.withOpacity(0.1),
              borderRadius: BorderRadius.all(
                Radius.circular(largeRadius),
              ),
            ),
            padding: const EdgeInsets.all(smallPadding),
            child: Icon(
              Icons.done_rounded,
              color: mainBlue,
              size: 38,
            ),
          ),
          UIHelper.horizontalSpaceLarge(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textMediumStyle.copyWith(
                      color: mainBlue, fontWeight: FontWeight.w600),
                ),
                UIHelper.verticalSpaceSmall(),
                Text(
                  desc,
                  style: textSmallStyle.copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
