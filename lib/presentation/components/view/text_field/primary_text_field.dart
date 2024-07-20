import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/color.dart';
import '../../../shared/text_style.dart';
import '../text/primary_text.dart';

enum TextInputEnum { standardInput, phoneInput }

class PrimaryTextField extends StatelessWidget {
  final String hint;
  final String? title;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixText;
  final Color? suffixColor;
  final Color borderColor;
  final bool isEnabled;
  final TextInputEnum inputType;
  final bool obscureText;
  final int maxLines;
  final Color backgroundColor;
  final Color textColor;
  final double? borderRadius;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;

  const PrimaryTextField({
    super.key,
    required this.hint,
    this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixColor = UIColor.generalGray,
    this.borderColor = UIColor.generalGray,
    this.suffixText = "",
    this.backgroundColor = UIColor.generalWhite,
    this.isEnabled = true,
    this.borderRadius,
    this.maxLines = 1,
    this.obscureText = false,
    this.textColor = UIColor.black,
    this.validator,
    this.controller,
  }) : inputType = TextInputEnum.standardInput;

  const PrimaryTextField.phone({
    super.key,
    required this.hint,
    this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixColor = UIColor.generalGray,
    this.borderColor = UIColor.generalGray,
    this.suffixText = "",
    this.backgroundColor = UIColor.generalWhite,
    this.isEnabled = true,
    this.maxLines = 1,
    this.borderRadius,
    this.obscureText = false,
    this.textColor = UIColor.black,
    this.validator,
    this.controller,
  }) : inputType = TextInputEnum.phoneInput;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: PrimaryText(
              text: title!,
              textColor: UIColor.gray600,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          8.verticalSpace,
        ],
        TextFormField(
          style: UITextStyle.style16(context)?.copyWith(color: textColor),
          keyboardType: inputType == TextInputEnum.phoneInput
              ? TextInputType.phone
              : TextInputType.text,
          inputFormatters: inputType == TextInputEnum.phoneInput
              ? <TextInputFormatter>[_PhoneNumberInputFormatter()]
              : null,
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          maxLines: maxLines,
          cursorColor: UIColor.generalGray,
          decoration: InputDecoration(
            filled: true,
            suffixText: suffixText,
            suffixStyle:
                UITextStyle.style16(context)?.copyWith(color: suffixColor),
            enabled: isEnabled,
            fillColor: backgroundColor,
            prefixIcon: prefixIcon ?? prefixIcon,
            suffixIcon: suffixIcon ?? suffixIcon,
            labelStyle: TextStyle(
              fontSize: 16,
              height: 1.5,
              fontWeight: FontWeight.w500,
              color: UIColor.generalGrayColor(context),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: borderColor),
              borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
              borderSide: const BorderSide(
                color: UIColor.red,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
              borderSide: const BorderSide(
                color: UIColor.black,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
              borderSide: const BorderSide(
                color: UIColor.red,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            label: Text(
              hint,
              style: UITextStyle.style16(context)
                  ?.copyWith(color: UIColor.generalGrayColor(context)),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintStyle: UITextStyle.style16(context)
                ?.copyWith(color: UIColor.transparent),
          ),
        ),
      ],
    );
  }
}

class _PhoneNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;

    if (newText.isEmpty) {
      return newValue;
    }

    newText = newText.replaceAll(' ', '');

    if (newText.length > 2 && newText.length <= 5) {
      newText = '${newText.substring(0, 2)} ${newText.substring(2)}';
    } else if (newText.length > 5 && newText.length <= 7) {
      newText =
          '${newText.substring(0, 2)} ${newText.substring(2, 5)} ${newText.substring(5)}';
    } else if (newText.length > 7 && newText.length <= 9) {
      newText =
          '${newText.substring(0, 2)} ${newText.substring(2, 5)} ${newText.substring(5, 7)} ${newText.substring(7)}';
    } else if (newText.length > 9) {
      newText =
          '${newText.substring(0, 2)} ${newText.substring(2, 5)} ${newText.substring(5, 7)} ${newText.substring(7, 9)}';
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
