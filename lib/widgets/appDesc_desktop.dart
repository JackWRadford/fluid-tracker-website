import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:fluid_tracker_site/widgets/appDescText.dart';
import 'package:fluid_tracker_site/widgets/appPreviewImage.dart';
import 'package:flutter/material.dart';

class AppDescDesktop extends StatelessWidget {
  const AppDescDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: largePadding),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDescText(),
          UIHelper.horizontalSpace(100),
          AppPreviewImage(),
        ],
      ),
    );
  }
}
