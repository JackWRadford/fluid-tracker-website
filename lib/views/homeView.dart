import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/widgets/appDesc.dart';
import 'package:fluid_tracker_site/widgets/features.dart';
import 'package:fluid_tracker_site/widgets/myAppBar.dart';
import 'package:fluid_tracker_site/widgets/myFooter.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyAppBar(),
          UIHelper.verticalSpace(40),
          AppDesc(),
          UIHelper.verticalSpace(80),
          Features(),
          MyFooter(),
        ],
      ),
    );
  }
}
