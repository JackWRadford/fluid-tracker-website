import 'package:flutter/material.dart';

// function for regularly used widgets (adhere to 8,16,32,64)
class UIHelper {
  // define spaces
  static const double _SpaceVerySmall = 4.0;
  static const double _SpaceSmall = 8.0;
  static const double _SpaceMedium = 16.0;
  static const double _SpaceLarge = 32.0;

  //vertical very small
  static Widget verticalSpaceVerySmall() {
    return verticalSpace(_SpaceVerySmall);
  }

  //vertical small
  static Widget verticalSpaceSmall() {
    return verticalSpace(_SpaceSmall);
  }

  //vertical medium
  static Widget verticalSpaceMedium() {
    return verticalSpace(_SpaceMedium);
  }

  //vertical large
  static Widget verticalSpaceLarge() {
    return verticalSpace(_SpaceLarge);
  }

  //horizontal very small
  static Widget horizontalSpaceVerySmall() {
    return horizontalSpace(_SpaceVerySmall);
  }

  //horizontal small
  static Widget horizontalSpaceSmall() {
    return horizontalSpace(_SpaceSmall);
  }

  //horizontal medium
  static Widget horizontalSpaceMedium() {
    return horizontalSpace(_SpaceMedium);
  }

  //horizontal large
  static Widget horizontalSpaceLarge() {
    return horizontalSpace(_SpaceLarge);
  }

  //vertical sized box
  static Widget verticalSpace(double size) {
    return SizedBox(height: size);
  }

  //horizontal sized bos
  static Widget horizontalSpace(double size) {
    return SizedBox(width: size);
  }
}
