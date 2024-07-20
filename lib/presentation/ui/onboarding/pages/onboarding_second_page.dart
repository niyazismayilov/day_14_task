import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/color.dart';
import '../widgets/onboarding_column.dart';

class OnboardingSecondPage extends StatelessWidget {
  const OnboardingSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingColumn(
      assetPath: 'assets/images/onboarding2.svg',
      title: 'Stay organized with team ',
      description:
          'But understanding the contributions our colleagues make to our teams and companies',
      bgColor: UIColor.onboardingBg2, top: 125.h, betweenImageAndTitle: 109.h, betweenTexts: 15.h,
    );
  }
}
