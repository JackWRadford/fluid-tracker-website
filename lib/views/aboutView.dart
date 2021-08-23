import 'package:fluid_tracker_site/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(74),
        child: MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
