

import 'package:flutter/material.dart';
import 'package:flutter_assessment/splash/controllers/onborading_controller.dart';
import 'package:flutter_assessment/splash/extensions/color_extension.dart';
import 'package:flutter_assessment/splash/widgets/dot-indicator_widget.dart';
import 'package:flutter_assessment/splash/widgets/onboarding_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final OnboardingController _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
          
            Expanded(
              child: PageView.builder(
                controller: _controller.pageController,
                onPageChanged: (index) {
                  setState(() {
                    _controller.currentPage = index;
                  });
                },
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  final page = _controller.onboardingPages[index];
                  return OnboardingPage(
                    imagePath: page.imagePath,
                    title: page.title,
                    subtitle: page.subtitle,
                  );
                },
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  // Page Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _controller.onboardingPages.length,
                      (index) => DotIndicator(
                        isActive: index == _controller.currentPage,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Button
                  buttonwidget(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonwidget(BuildContext context,) {
    return ElevatedButton(
                  onPressed: () {
                    _controller.goToNextPage(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.button,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 16,
                    ),
                  ),
                  child: Text(
                    _controller.currentPage ==
                            _controller.onboardingPages.length - 1
                        ? 'Get Started'
                        : 'Next',
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                );
  }
}
