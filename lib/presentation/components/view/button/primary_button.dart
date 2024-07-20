

import 'package:flutter/material.dart';

import '../../../shared/color.dart';
import '../../../shared/text_style.dart'; // Ensure this path is correct

class PrimaryButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Widget? rightIcon;
  final Color? borderColor;
  final double elevation;
  final double borderRadius;
  final Widget? leftIcon;
  final double height;
  final bool alignCenter;
  final double? width;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double borderWidth;
  final bool loading;
  final FontWeight? fontWeight;
  final double? textSize;
  final BorderRadius? borderRadiusRoot;

  const PrimaryButton(
      {super.key,
        required this.title,
        this.onPressed,
        this.borderRadius = 12,
        this.backgroundColor = UIColor.primaryPurple,
        this.textColor = UIColor.white,
        this.rightIcon,
        this.elevation = 0.0,
        this.borderColor,
        this.leftIcon,
        this.borderRadiusRoot,
        this.alignCenter = true,
        this.width,
        this.fontWeight,
        this.textSize,
        this.height = 52,
        this.textStyle,
        this.padding = EdgeInsets.zero,
        this.borderWidth = 1,
        this.loading = false});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: !loading ? onPressed : null,
        style: ElevatedButton.styleFrom(
          padding: padding,
          shape: RoundedRectangleBorder(
              side: borderColor != null
                  ? BorderSide(color: borderColor!, width: borderWidth)
                  : BorderSide.none,
              borderRadius: borderRadiusRoot ?? BorderRadius.all(Radius.circular(borderRadius))),
          elevation: elevation,
          backgroundColor: backgroundColor,
          maximumSize: Size(width ?? MediaQuery.of(context).size.width, height),
          minimumSize: Size(width ?? MediaQuery.of(context).size.width, height),
          shadowColor: elevation != 0.0 ? UIColor.tint : UIColor.transparent,
        ),
        child: Row(
          mainAxisAlignment:
          alignCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            if (leftIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: leftIcon,
              ),
            Text(
                title,
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: textStyle ?? UITextStyle.style16(context)?.copyWith(color: textColor, fontWeight: fontWeight , fontSize: textSize),
                textAlign: TextAlign.center,
              ),
            if (rightIcon != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: rightIcon,
              ),
          ],
        ),
    );
  }
}