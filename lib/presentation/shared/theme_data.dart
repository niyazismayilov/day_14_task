
import 'package:animations/animations.dart';
import 'package:day_17_tapsiriq/presentation/shared/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class VetoThemeData {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: UIColor.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: UIColor.darkThemeOverflow,
    textTheme: GoogleFonts.libreFranklinTextTheme(),
    //fontFamily: GoogleFonts.manrope().fontFamily,
    hoverColor: Colors.transparent,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(transitionType: SharedAxisTransitionType.scaled),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    splashColor: Colors.white,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: UIColor.purple,
        onPrimary: UIColor.invalidField,
        secondary: UIColor.white77,
        onSecondary: UIColor.backIcon,
        error: UIColor.invalidField,
        background: UIColor.backIcon,
        onBackground: UIColor.backIcon,
        onError: UIColor.backIcon,
        surface: UIColor.darkSurface,
        // Select reg back
        onSurface: UIColor.backIcon),
    primaryTextTheme: const TextTheme(
      displayLarge: TextStyle(

        // H1
          fontFamily: UITextStyle.Manrope,
          fontSize: 24.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.whiteGeneral),
      displayMedium: TextStyle(
        // H2
          fontFamily: UITextStyle.Manrope,
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.whiteGeneral),
      displaySmall: TextStyle(
        // H3
          fontFamily: UITextStyle.Manrope,
          fontSize: 18.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
          color: UIColor.whiteGeneral),
      headlineSmall: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 14.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: UIColor.black),
      headlineMedium: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 16.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: UIColor.white),
      headlineLarge: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 13.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.white),
      bodySmall:  TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 11.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          color: UIColor.generalWhite),
      labelMedium: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 15.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: UIColor.black),
      labelLarge: TextStyle(
        // H1
          fontFamily: UITextStyle.Manrope,
          fontSize: 32.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.white),
    ),
    appBarTheme: AppBarTheme(
      color: UIColor.darkThemeOverflow,
      elevation: 0,
      foregroundColor: UIColor.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: UIColor.white,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.17,
        fontFamily: GoogleFonts.manrope().fontFamily,
      ),
      iconTheme: const IconThemeData(
        color: UIColor.primary,
      ),
    ),
    /* dark theme settings */
  );
  
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    hoverColor: Colors.transparent,
    splashColor: Colors.white,
    scaffoldBackgroundColor: UIColor.whiteThemeOverflow,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.white,
    fontFamily: GoogleFonts.manrope().fontFamily,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(transitionType: SharedAxisTransitionType.scaled),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    primaryTextTheme: const TextTheme(
      displayLarge: TextStyle(
        // H1
          fontFamily:UITextStyle.Manrope,
          fontSize: 24.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.whiteGeneral),
      displayMedium: TextStyle(
        // H2
          fontFamily: UITextStyle.Manrope,
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.whiteGeneral),
      displaySmall: TextStyle(
        // H3
          fontFamily: UITextStyle.Manrope,
          fontSize: 18.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.2,
          color: UIColor.whiteGeneral),
      headlineSmall: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 14.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: UIColor.black),
      headlineMedium: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 16.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: UIColor.white),
      headlineLarge: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 13.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.white),
      bodySmall:  TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 11.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          color: UIColor.generalWhite),
      labelMedium: TextStyle(
          fontFamily: UITextStyle.Manrope,
          fontSize: 15.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: UIColor.black),
      labelLarge: TextStyle(
        // H1
          fontFamily: UITextStyle.Manrope,
          fontSize: 32.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: UIColor.white),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: UIColor.purple,
      onPrimary: UIColor.invalidField,
      secondary: UIColor.whiteThemeGrayButton,
      onSecondary: UIColor.backIcon,
      error: UIColor.invalidField,
      background: UIColor.backIcon,
      onBackground: UIColor.backIcon,
      onError: UIColor.backIcon,
      surface: UIColor.whiteThemeOverflow,
      onSurface: UIColor.backIcon,
    ),
    appBarTheme: AppBarTheme(
      color: UIColor.whiteThemeOverflow,
      elevation: 0,
      foregroundColor: UIColor.primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: UIColor.black,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.17,
        fontFamily: GoogleFonts.manrope().fontFamily,
      ),
      iconTheme: const IconThemeData(
        color: UIColor.primary,
      ),
    ),
  );
}

extension P30ThemeDataExt on ThemeData {
  Color get generalGray {
    if (brightness == Brightness.light) {
      return UIColor.generalGrayWhiteTheme;
    } else {
      return UIColor.generalGray;
    }
  }
  Color get generalGray2 {
    if (brightness == Brightness.light) {
      return UIColor.generalWhite;
    } else {
      return UIColor.generalGray2;
    }
  }
  Color get grayButton {
    if (brightness == Brightness.light) {
      return UIColor.whiteThemeGrayButton;
    } else {
      return UIColor.darkThemeGrayButton;
    }
  }
  Color get generalWhite {
    if (brightness == Brightness.light) {
      return UIColor.whiteThemeText;
    } else {
      return UIColor.generalWhite;
    }
  }
  Color get backIconColor {
    if (brightness == Brightness.light) {
      return UIColor.whiteThemeBackground;
    } else {
      return UIColor.backIcon;
    }
  }
  Color get themeBackground {
    if (brightness == Brightness.light) {
      return UIColor.whiteThemeBackground;
    } else {
      return UIColor.darkThemeBase;
    }
  }
  Color get darkSurfaceColor {
    if (brightness == Brightness.light) {
      return UIColor.whiteSurface;
    } else {
      return UIColor.darkSurface;
    }
  }
  Color get darkThemeBase {
    if (brightness == Brightness.light) {
      return UIColor.whiteThemeBackground;
    } else {
      return UIColor.darkThemeBase;
    }
  }
  Color get darkThemeOverflow {
    if (brightness == Brightness.light) {
      return UIColor.white;
    } else {
      return UIColor.darkThemeOverflow;
    }
  }
}
