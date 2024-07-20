import 'package:day_17_tapsiriq/presentation/ui/onboarding/widgets/onboarding_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/color.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingColumn(
      assetPath: 'assets/images/onboarding1.svg',
      title: 'Track your work and get the result',
      description:
          'Remember to keep track of your professional accomplishments.',
      bgColor: UIColor.onboardingBg1, top: 80.h, betweenImageAndTitle: 90.h, betweenTexts: 15.h,
    );
  }
}
