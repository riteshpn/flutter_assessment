import 'package:flutter/material.dart';
import 'package:flutter_assessment/splash/view_modell/onborading_controller.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';
import 'package:flutter_assessment/splash/widgets/dot_indicator_widget.dart';
import 'package:flutter_assessment/splash/widgets/next_button_widget.dart';
import 'package:flutter_assessment/splash/widgets/onboarding_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final OnboardingViewModel _controller = OnboardingViewModel();

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
                    NextButtonWidget( onboardingViewModel: _controller,)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
