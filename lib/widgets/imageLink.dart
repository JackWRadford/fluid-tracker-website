import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageLink extends StatelessWidget {
  final String url;
  final String imagePath;
  final double imageScale;
  ImageLink({
    Key? key,
    required this.url,
    required this.imagePath,
    required this.imageScale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        //try to open external link to Apple App Store
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          print('error launching $url');
          throw "Could not launch $url";
        }
      },
      child: Image.asset(
        imagePath,
        scale: imageScale,
      ),
    );
  }
}
