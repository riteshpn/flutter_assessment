import 'package:flutter/material.dart';
import 'package:flutter_assessment/sign_in/view/sign_in_screen_view.dart';
import 'package:flutter_assessment/splash/view_modell/onborading_controller.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class NextButtonWidget extends StatelessWidget {
  final OnboardingViewModel onboardingViewModel;

  const NextButtonWidget({
    super.key,
    required this.onboardingViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (onboardingViewModel.currentPage == onboardingViewModel.onboardingPages.length - 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginView()),
          );
        } else {
          onboardingViewModel.pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
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
      onboardingViewModel.currentPage == onboardingViewModel.onboardingPages.length - 1
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
