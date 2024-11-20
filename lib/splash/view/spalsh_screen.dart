import 'package:flutter/material.dart';
import 'package:flutter_assessment/sign_in/view/sign_in_screen_view.dart';
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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/bgimage.png',
              height: 180,
              width: 180,
            ),
          ),
          Column(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                    buttonwidget(context),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonwidget(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_controller.currentPage == _controller.onboardingPages.length - 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginView()),
          );
        } else {
          _controller.pageController.nextPage(
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
        _controller.currentPage == _controller.onboardingPages.length - 1
            ? 'Next'
            : 'Get Started',
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
