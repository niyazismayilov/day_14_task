import 'package:flutter/material.dart';

import '../../../shared/text_style.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  const PrimaryText(
      {super.key,
      required this.text,
      this.style,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
        this.overflow,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          UITextStyle.style16(context)?.copyWith(
              color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
