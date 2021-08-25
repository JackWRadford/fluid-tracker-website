import 'package:flutter/material.dart';

class AppBarLogoMobile extends StatelessWidget {
  const AppBarLogoMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Image.asset(
        'assets/appIcon.png',
      ),
    );
  }
}
