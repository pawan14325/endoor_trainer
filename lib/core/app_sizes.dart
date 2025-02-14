import 'package:flutter/widgets.dart';

class AppSizes {
  static final AppSizes _instance = AppSizes._internal();

  factory AppSizes() {
    return _instance;
  }

  AppSizes._internal();
  // Initialize screen width and height
  static late double screenWidth;
  static late double screenHeight;

  // Call this method once in the app to initialize sizes
  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }

  // Padding
  static double get paddingSmall => screenWidth * 0.02;
  static double get paddingMedium => screenWidth * 0.04;
  static double get paddingLarge => screenWidth * 0.06;

  // Margin
  static double get marginSmall => screenWidth * 0.02;
  static double get marginMedium => screenWidth * 0.04;
  static double get marginLarge => screenWidth * 0.06;

  // Border Radius
  static double get borderRadius => screenWidth * 0.03;
}
