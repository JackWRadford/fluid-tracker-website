import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:fluid_tracker_site/widgets/appDescText.dart';
import 'package:fluid_tracker_site/widgets/appPreviewImage.dart';
import 'package:flutter/material.dart';

class AppDescMobileTablet extends StatelessWidget {
  const AppDescMobileTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: largePadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppDescText(),
          UIHelper.verticalSpace(100),
          AppPreviewImage(),
        ],
      ),
    );
  }
}
