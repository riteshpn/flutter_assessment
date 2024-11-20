import 'package:flutter/material.dart';
import 'package:flutter_assessment/splash/enum/font_enum.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Shoe Image
        Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height * 0.4,
        ),

        const SizedBox(height: 40),

        // Title
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: FontStyleEnum.title.style,
          ),
        ),

        const SizedBox(height: 16),

        // Subtitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            subtitle,
            style: FontStyleEnum.subtitle.style,
          ),
        ),
      ],
    );
  }
}
