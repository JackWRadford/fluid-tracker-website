import 'package:fluid_tracker_site/shared/app_text_styles.dart';
import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String label;
  final Function() onpress;
  TextLink({
    Key? key,
    required this.label,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.all(
          smallPadding,
        ),
        child: Padding(
          padding: const EdgeInsets.all(smallPadding),
          child: Text(
            label,
            style: textSmallStyle,
          ),
        ),
      ),
    );
  }
}
