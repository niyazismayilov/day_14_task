import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;

  const IconText(
      {super.key,
      required this.text,
      this.textStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        prefixIcon??const SizedBox(),
        Text(
          text,
          textAlign: textAlign,
          style: textStyle,
        ),
        suffixIcon??const SizedBox(),
      ],
    );
  }
}
