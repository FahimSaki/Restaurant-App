//import 'package:flutter/cupertino.dart';

class ResponsiveComponents {
  static double responsiveTopBarHeight(
      {required double screenHeight, required screenWidth}) {
    if (isMobileScreen(screenHeight: screenHeight, screenWidth: screenWidth)) {
      return screenHeight * 0.30;
    }
    return screenHeight * 0.20;
  }

  static isMobileScreen({
    required double screenHeight,
    required double screenWidth,
  }) {
    return screenHeight > screenWidth;
  }

  static double responsiveItemHeight(double screenHeight) {
    //if (screenHeight < 605) return 200;
    // if (screenHeight < 500) return 80;
    // if (screenHeight < 550) return 100;
    // if (screenHeight < 600) return 110;
    // if (screenHeight < 650) return 120;
    // if (screenHeight < 700) return 130;
    // if (screenHeight < 750) return 140;
    // if (screenHeight < 800) return 150;
    // if (screenHeight < 850) return 170;
    if (screenHeight < 500) return 80 + 120;
    if (screenHeight < 550) return 100 + 120;
    if (screenHeight < 600) return 110 + 120;
    if (screenHeight < 650) return 120 + 120;
    if (screenHeight < 700) return 130 + 120;
    if (screenHeight < 750) return 140 + 120;
    if (screenHeight < 800) return 150 + 120;
    if (screenHeight < 850) return 170 + 120;
    //if (screenHeight < 815) return 100;
    //if (screenHeight < 850) return 120;
    //if (screenHeight < 930) return 170;
    //if (screenHeight < 1200) return 200;
    //if (screenHeight < 1500) return 300;

    return screenHeight * 0.4;
  }

  static double responsiveItemWidth(double screenWidth) {
    if (screenWidth < 380) return 200;
    if (screenWidth < 450) return 220;
    if (screenWidth < 700) return 320;
    if (screenWidth < 950) return 420;

    return screenWidth * 0.2;
  }

  static double responsiveMenuBarHeight(double screenHeight) {
    if (screenHeight > 600) return 150;

    return screenHeight * 0.2;
  }

  static double responsiveMenuBarWidth(double screenWidth) {
    if (screenWidth < 800) return 110;

    return screenWidth * 0.2;
  }
}
