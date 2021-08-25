import 'package:fluid_tracker_site/widgets/markDownRenderer.dart';
import 'package:flutter/material.dart';

class TermsView extends StatelessWidget {
  const TermsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkDownRenderer(fileName: 'terms.md');
  }
}
