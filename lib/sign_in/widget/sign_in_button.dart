import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignInButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blueColor,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: const Text(
        'Sign In',
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
