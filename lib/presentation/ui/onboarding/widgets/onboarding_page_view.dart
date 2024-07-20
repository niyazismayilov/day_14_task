import 'package:day_17_tapsiriq/presentation/components/view/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/color.dart';

class OnboardingPageView extends StatefulWidget {
  final List<Widget> pages;

  const OnboardingPageView({required this.pages, super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final PageController _pageController = PageController();
  double currentPage = 0;
  int activePage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page ?? 0;
        activePage = currentPage.toInt();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              currentPage = page.toDouble();
            });
          },
          itemCount: widget.pages.length,
          itemBuilder: (BuildContext context, int index) {
            return widget.pages[index % widget.pages.length];
          },
        ),
        Positioned(
            bottom: 15.h,
            left: 40.w,
            top: 533.h,
            right: 40.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    widget.pages.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          height: 10.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                              color: currentPage.round() == index
                                  ? UIColor.black
                                  : UIColor.transparent,
                              borderRadius: BorderRadius.circular(90),
                              border: Border.all(color: UIColor.black)),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    activePage != widget.pages.length - 1 ? TextButton(onPressed: () {}, child: const Text('SKIP', style: TextStyle(color: UIColor.black,),)) : const SizedBox.shrink(),
                    activePage != widget.pages.length - 1 ? const Spacer() : const SizedBox.shrink(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Row(
                        children: [
                          AnimatedSize(
                            duration: const Duration(milliseconds: 500),
                            child: PrimaryButton(
                              title: activePage != widget.pages.length - 1
                                  ? 'NEXT'
                                  : 'START',
                              height: 68.h,
                              backgroundColor: UIColor.black,
                              borderRadius: 50,
                              textColor: UIColor.white,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 36.w, vertical: 23.h),
                              width: activePage != widget.pages.length - 1
                                  ? 118.w
                                  : 250.w,
                              onPressed: () {
                                if (activePage != widget.pages.length - 1) {
                                  activePage = currentPage.toInt() + 1;
                                  _pageController.animateToPage(
                                      currentPage.toInt() + 1,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                } else {
                                  activePage = currentPage.toInt();

                                  /// Go to
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
