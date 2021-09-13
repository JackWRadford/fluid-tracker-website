import 'package:flutter/material.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  LayoutTemplate({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //main content
          Flexible(
            child: child,
          ),
        ],
      ),
    );
  }
}
