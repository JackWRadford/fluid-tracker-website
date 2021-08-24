import 'package:fluid_tracker_site/shared/ui_size_value.dart';
import 'package:fluid_tracker_site/widgets/appBarLogo.dart';
import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: largePadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBarLogo(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_rounded,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
