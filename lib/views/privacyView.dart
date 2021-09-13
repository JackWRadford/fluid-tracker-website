import 'package:fluid_tracker_site/shared/ui_helpers.dart';
import 'package:fluid_tracker_site/widgets/markDownRenderer.dart';
import 'package:fluid_tracker_site/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        Flexible(child: MarkDownRenderer(fileName: 'privacy.md')),
      ],
    );
  }
}
