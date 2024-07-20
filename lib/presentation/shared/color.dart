import 'dart:ui';

import 'package:day_17_tapsiriq/presentation/shared/theme_data.dart';
import 'package:flutter/material.dart';

class UIColor {
  /// Color List used in Application
  static white7(context) => Theme.of(context).colorScheme.secondary;

  static greenPrimary(context) => Theme.of(context).colorScheme.primary;

  static secondaryColor(context) => Theme.of(context).colorScheme.secondary;

  static surface(context) => Theme.of(context).colorScheme.surface;

  static Color generalGrayColor(context) => Theme.of(context).generalGray;

  static Color generalGray2Color(context) => Theme.of(context).generalGray2;

  static grayButton(context) => Theme.of(context).grayButton;

  static Color generalWhiteColor(context) => Theme.of(context).generalWhite;

  static Color backIconColor(context) => Theme.of(context).backIconColor;

  static Color themeBackground(context) => Theme.of(context).themeBackground;

  static Color darkSurfaceColor(context) => Theme.of(context).darkSurfaceColor;

  static Color darkThemeBaseColor(context) => Theme.of(context).darkThemeBase;

  static Color darkThemeOverflowColor(context) =>
      Theme.of(context).darkThemeOverflow;

  /// Otp Page Colors

  static const grey50 = Color.fromRGBO(240, 240, 240, 1);
  static const grey25 = Color.fromRGBO(247, 247, 247, 1);
  static const grey100 = Color.fromRGBO(230, 230, 230, 1);
  static const purple300 = Color.fromRGBO(214, 145, 243, 1);
  static const baseBlack = Color.fromRGBO(13, 13, 13, 1);
  static const grey200 = Color.fromRGBO(204, 204, 204, 1);
  static const purple500 = Color.fromRGBO(179, 51, 233, 1);

  static const pink300 = Color.fromRGBO(214, 145, 243, 1);
  static const pink200 = Color.fromRGBO(231, 191, 248, 1);
  static const grey500 = Color.fromRGBO(128, 128, 128, 1);
  static const purple400 = Color.fromRGBO(197, 98, 238, 1);
  static const blue600 = Color.fromRGBO(3, 163, 236, 1);
  static const green700 = Color.fromRGBO(4, 128, 0, 1);
  static const green100 = Color.fromRGBO(215, 255, 214, 1);
  static const grey30 = Color.fromRGBO(77, 77, 77, 1);

  /// Login Page Colors
  static const gray600 = Color.fromRGBO(102, 102, 102, 1);
  static const gray300 = Color.fromRGBO(179, 179, 179, 1);

  ///Home Page Colors
  static const green600 = Color.fromRGBO(6, 178, 0, 1);

  //Figma color list
  static const primary = Color.fromRGBO(12, 12, 12, 1);
  static const openGray = Color.fromRGBO(230, 230, 230, 1);
  static const black800 = Color.fromRGBO(13, 13, 13, 0.8);
  static const black400 = Color.fromRGBO(13, 13, 13, 0.4);
  static const white300 = Color.fromRGBO(255, 255, 255, 0.3);
  static const openShadowRed = Color.fromRGBO(255, 245, 245, 1);
  static const redColor600 = Color.fromRGBO(196, 8, 8, 1);

  static const whiteShadow = Color.fromRGBO(236, 233, 236, 1);

  static const green = Color.fromRGBO(50, 179, 106, 1);
  static const grayPrimary = Color.fromRGBO(189, 189, 189, 1);
  static const grayPrimary130 = Color.fromRGBO(130, 130, 130, 1);
  static const grayDark = Color.fromRGBO(51, 51, 51, 1);
  static const grayDark37 = Color.fromRGBO(37, 37, 37, 1);
  static const grayDark79 = Color.fromRGBO(79, 79, 79, 1);
  static const guestButtonBlack = Color.fromRGBO(51, 51, 51, 1);
  static const blackDark = Color.fromRGBO(23, 23, 23, 1);
  static const white = Color.fromRGBO(255, 255, 255, 1);
  static const grey33 = Color.fromRGBO(51, 51, 51, 1.0);
  static const greybdb = Color.fromRGBO(189, 189, 189, 1.0);
  static const gray6 = Color.fromRGBO(37, 37, 37, 1);
  static const graySmiley = Color.fromRGBO(202, 202, 202, 1);
  static const gray5 = Color.fromRGBO(51, 51, 51, 1);
  static const gray3 = Color.fromRGBO(130, 130, 130, 1);
  static const gray2 = Color.fromRGBO(189, 189, 189, 1);
  static const stepperRed = Color.fromRGBO(255, 142, 124, 1);
  static const whiteSmoke = Color.fromRGBO(242, 242, 242, 1);

  static const blue = Color.fromRGBO(11, 110, 254, 1);


      static const grayLight = Color.fromRGBO(229, 229, 229, 1);
  static const black18 = Color.fromRGBO(18, 18, 18, 1);
  static const yellow = Color.fromRGBO(227, 155, 47, 1);
  static const yellowSmiley = Color.fromRGBO(255, 194, 98, 1);
  static const pink = Color.fromRGBO(254, 119, 98, 1);

  //New List
  static const textFieldGray = Color.fromRGBO(99, 92, 92, 1);
  static const darkBrown = Color.fromRGBO(70, 68, 68, 1);
  static const pinkColor = Color.fromRGBO(248, 154, 238, 1);

  /// DARK THEME COLORS
  static const darkThemeOverflow = Color.fromRGBO(6, 7, 12, 1);
  static const darkGeneralWhite = Color.fromRGBO(221, 221, 221, 1);
  static const grayColor128 = Color.fromRGBO(128, 128, 128, 1);

  /// GENERAL THEME COLORS
  static const generalGray = Color.fromRGBO(153, 153, 153, 1);
  static const generalGrayWhiteTheme = Color.fromRGBO(108, 111, 114, 1);
  static const generalGray2 = Color.fromRGBO(131, 139, 143, 1);
  static const primaryGreen = Color.fromRGBO(50, 179, 106, 1);
  static const white77 = Color.fromRGBO(255, 255, 255, 0.07);
  static const whiteThemeGrayButton = Color.fromRGBO(237, 237, 237, 1);
  static const whiteThemeBackground = Color.fromRGBO(243, 243, 243, 1);
  static const whiteSurface = Color.fromRGBO(217, 215, 206, 1);
  static const whiteThemeText = Color.fromRGBO(0, 0, 0, 1);
  static const darkThemeGrayButton = Color.fromRGBO(255, 255, 255, 0.07);
  static const generalError = Color.fromRGBO(239, 15, 55, 1);

  ///

  /// WHITE THEME COLORS
  static const whiteThemeOverflow = Color.fromRGBO(255, 255, 255, 1);
  static const whiteGeneral = Color.fromRGBO(0, 0, 0, 1);

  ///
  static const purple100 = Color.fromRGBO(243, 223, 252, 1);
  static const systemGrayLight = Color.fromRGBO(142, 142, 147, 1);
  static const gradientOnboardingStart = Color.fromRGBO(160, 109, 243, 1);
  static const gradientOnboardingEnd = Color.fromRGBO(50, 179, 106, 1);
  static const gradientButtonStart = Color.fromRGBO(166, 113, 255, 1);
  static const gradientButtonEnd = Color.fromRGBO(98, 219, 142, 1);
  static const darkSurface = Color.fromRGBO(38, 40, 49, 1);
  static const backIcon = Color.fromRGBO(22, 23, 29, 1);
  static const primaryPurple = Color.fromRGBO(160, 109, 243, 1);
  static const generalWhite = Color.fromRGBO(221, 221, 221, 1);
  static const darkThemeBase = Color.fromRGBO(22, 23, 29, 1);

  //Color list

  static const tint = Color(0xFFF2F5F8);
  static const tintDark = Color(0xFFEFF0F8);
  static const tintLight = Color(0xFFFBFBFB);

  static const textLight = Color(0xFFD8D8D8);
  static const textDark = Color(0xFFADA8B8);
  static const textV1 = Color(0xFF484451);
  static const textV2 = Color(0xFF948EA2);
  static const textV3 = Color(0xFF979797);

  static const boldText = Color(0xFF323643);
  static const addressText = Color(0xFF9C9C9C);

  static const validField = Color(0xFF86D530);
  static const invalidField = Color(0xFFF37896);

  static const lightIndicator = Color(0xFFE1E0E3);

  static const dialogDivider = Color(0xFFEAEAEA);

  static const black = Colors.black;
  static const transparent = Colors.transparent;
  static const red = Color(0xFFF16161);
  static const darkYellow = Color(0xFFFFAA00);
  static const purple = Color(0xFFB333E9);


  static const onboardingBg1 = Color(0xFFDAD3C8);
  static const onboardingBg2 = Color(0xFFFFE5DE);
  static const onboardingBg3 = Color(0xFFDCF6E6);


  static const boldGold = Color(0xFF988869);
  static const generalGold = Color(0xFFCAB894);
  static const black25 = Color(0xFF252525);
}

class Ab extends TextTheme {}
