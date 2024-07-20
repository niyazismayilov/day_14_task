import 'package:day_17_tapsiriq/presentation/ui/onboarding/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

import 'pages/onboarding_first_page.dart';
import 'pages/onboarding_second_page.dart';
import 'pages/onboarding_third_page.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = const [
      OnboardingFirstPage(),
      OnboardingSecondPage(),
      OnboardingThirdPage()
    ];
    return Scaffold(
      body: OnboardingPageView(pages: pages),
    );
  }
}
