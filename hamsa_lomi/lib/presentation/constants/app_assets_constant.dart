// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HamsaColors {
  //Primary colors
  static const Color primaryColor = Color(0xFF9ACB34); //update it
  static const Color secondaryColor = Color(0xff04D0D9);
  static const Color lightBackground = Color(0xffF7F7F7);
  static const Color darkGray = Color(0xff353E4A);
  static const Color lightGray = Color(0xffE7E7E7);
  static const Color creamColor = Color(0xffFBF8EF);

  static const MaterialColor primarySwatch =
      MaterialColor(0xFF9ACB34, <int, Color>{
    50: Color(0xFF8bb72f),
    100: Color(0xff8bb72f), //20%
    200: Color(0xff6c8e24), //30%
    300: Color(0xff5c7a1f), //40%
    400: Color(0xff4d661a), //50%
    500: Color(0xff3e5115), //60%
    600: Color(0xff2e3d10), //70%
    700: Color(0xff1f290a), //80%
    800: Color(0xff0f1405), //90%
    900: Color(0xff000000),
  });
}

class HamsaIcons {
  //Icons path
  static const String hamsaLogo = 'lib/presentation/assets/icons/hamsa_logo.svg';
  static const String charityIcon = 'assets/icons/charity.svg';
  static const String educationIcon = 'assets/icons/enducation.svg';
  static const String healthIcon = 'assets/icons/healthIcon.svg';
  static const String optionsIcon = 'assets/icons/options.svg';
}

class HamsaImages {
// default image we need to add
  static const String rectangleBackground =
      'lib/presentation/assets/images/rectangle_background.png';
}
