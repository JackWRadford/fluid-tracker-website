import 'package:flutter/material.dart';

class AppPreviewImage extends StatelessWidget {
  const AppPreviewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/preview.png',
      scale: 1.1,
    );
  }
}
