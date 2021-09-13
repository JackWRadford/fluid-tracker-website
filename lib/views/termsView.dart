import 'package:fluid_tracker_site/widgets/markDownRenderer.dart';
import 'package:fluid_tracker_site/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class TermsView extends StatelessWidget {
  const TermsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyAppBar(),
        Flexible(child: MarkDownRenderer(fileName: 'terms.md')),
      ],
    );
  }
}
