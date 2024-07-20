import 'package:day_17_tapsiriq/presentation/shared/screen_util.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class UITextStyle {
  static const Manrope = 'Manrope';
  static const Basis = 'Basis';
  static const TTCommons = 'TTCommons';

  ///Fonts

  static TextStyle? style18(context) => Theme.of(context).primaryTextTheme.displaySmall?.copyWith(fontSize: 18 *
      Config.multiplier);

  static TextStyle? style14(context) => Theme.of(context).primaryTextTheme.headlineSmall?.copyWith(fontSize: 14 *
      Config.multiplier);

  static TextStyle? style15(context) => Theme.of(context).primaryTextTheme.labelMedium?.copyWith(fontSize: 15 *
      Config.multiplier);

  static TextStyle? style13(context) => Theme.of(context).primaryTextTheme.headlineLarge?.copyWith(fontSize: 13 *
      Config.multiplier);

  static TextStyle? style16(context) => Theme.of(context).primaryTextTheme.headlineMedium?.copyWith(fontSize: 16 *
      Config.multiplier);

  static TextStyle? style24(context) => Theme.of(context).primaryTextTheme.displayLarge?.copyWith(fontSize: 24 *
      Config.multiplier);

  static TextStyle? style32(context) => Theme.of(context).primaryTextTheme.labelLarge?.copyWith(fontSize: 32 *
      Config.multiplier);

  static TextStyle? style11(context) => Theme.of(context).primaryTextTheme.bodySmall?.copyWith(fontSize: 11 *
      Config.multiplier);

  // static TextStyle? mediumStyle(context) => Theme.of(context).primaryTextTheme.headlineMedium;

  ///

  static headingH1({fontFamily = Basis, color = UIColor.white}) => TextStyle(
      fontFamily: Basis, fontSize: 24.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500, color: color);

  static headingH1strokethrough({color = UIColor.white}) => TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
    color: color,
    decoration: TextDecoration.lineThrough,
    decorationThickness: 1.5,
  );

  static headingH2({color = UIColor.white}) => TextStyle(
      fontFamily: Manrope, fontSize: 20.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500, color: color);

  static headingH3({color = UIColor.white}) => TextStyle(
      fontFamily: Manrope,
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      color: color);

  static buttonNormalSemiBold({color = UIColor.white}) => TextStyle(
      fontFamily: Manrope, fontSize: 16.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: color);

  static bodyNormalRegular({fontFamily = Basis, color = UIColor.white}) => TextStyle(
      fontFamily: fontFamily, fontSize: 16.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, color: color);

  static bodySmallRegular({fontFamily = Basis, color = UIColor.white}) => TextStyle(
      fontFamily: fontFamily, fontSize: 14.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, color: color);

  static bodyExtraSmallRegular({
    fontFamily = Basis,
    color = UIColor.white,
  }) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: 13.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          color: color);

  static bodyNormalMedium({color = UIColor.white}) => TextStyle(
      fontFamily: Manrope, fontSize: 16.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500, color: color);

  static bodyNormalMediumUnderlined({color = UIColor.white}) => TextStyle(
    fontFamily: Manrope,
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: color,
  );

  static const searchResultHeadLine = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
    letterSpacing: .18,
    color: UIColor.black,
  );

  static bodyExtraSmallSemiBold({color = UIColor.white}) => TextStyle(
      fontFamily: Manrope, fontSize: 11.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: color);

  static bodyNormalSemiBold({color = UIColor.grayPrimary}) => TextStyle(
      fontFamily: Manrope, fontSize: 16.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: color);

  static bodyNormalBold({color = UIColor.grayPrimary}) => TextStyle(
      fontFamily: Manrope, fontSize: 16.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w700, color: color);

  static bodySmallerSemiBold({color = UIColor.grayPrimary}) => TextStyle(
      fontFamily: Manrope, fontSize: 12.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500, color: color);
}
