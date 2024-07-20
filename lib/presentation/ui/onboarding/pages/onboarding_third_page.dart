import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/color.dart';
import '../widgets/onboarding_column.dart';

class OnboardingThirdPage extends StatelessWidget {
  const OnboardingThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingColumn(assetPath: 'assets/images/onboarding3.svg', title: 'Get notified when work happens', description: 'Take control of notifications, collaborate live or on your own time', bgColor: UIColor.onboardingBg3, top: 80.h, betweenImageAndTitle: 125.h, betweenTexts: 15.h,);
  }
}
