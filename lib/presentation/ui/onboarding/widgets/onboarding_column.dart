import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/color.dart';

class OnboardingColumn extends StatelessWidget {

  final String assetPath;
  final String title;
  final String description;
  final Color bgColor;
  final double top;
  final double betweenImageAndTitle;
  final double betweenTexts;
  const OnboardingColumn({super.key, required this.assetPath, required this.title, required this.description, required this.bgColor, required this.top, required this.betweenImageAndTitle, required this.betweenTexts});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: top,),
          SvgPicture.asset(assetPath),
          SizedBox(height: betweenImageAndTitle,),
          Text(title, style: GoogleFonts.mulish(fontSize: 35.sp, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
          SizedBox(height: betweenTexts,),
          Text(description, style: GoogleFonts.mulish(fontSize: 19.sp), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
