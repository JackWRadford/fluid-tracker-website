import 'package:fluid_tracker_site/widgets/markDownRenderer.dart';
import 'package:flutter/material.dart';

class PrivacyView extends StatelessWidget {
  const PrivacyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkDownRenderer(fileName: 'privacy.md');
  }
}
