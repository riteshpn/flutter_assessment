import 'package:flutter/material.dart';

import '../models/onboarding_model.dart';

class OnboardingController {
  final PageController pageController = PageController();
  int currentPage = 0;

  final List<OnboardingModel> onboardingPages = [
    OnboardingModel(
      imagePath: 'assets/splashlogo.png',
      title: 'Start Journey\nWith Shoes',
      subtitle: 'Smart, Gorgeous & Fashionable Collection',
    ),
    OnboardingModel(
      imagePath: 'assets/splashlogo.png',
      title: 'Follow Latest\nStyle Shoes',
      subtitle: 'There Are Many Beautiful And Attractive Shoes For You',
    ),
  ];

  void goToNextPage(BuildContext context) {
    if (currentPage < onboardingPages.length - 1) {
      currentPage++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Complete onboarding and navigate
      print("Onboarding Completed!");
    }
  }
}
