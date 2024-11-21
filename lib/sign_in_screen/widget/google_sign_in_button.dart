import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleSignInButton({required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Image.asset('assets/G.png', height: 24), 
      label: const Text(
        'Sign in with Google',
        style: TextStyle(color: AppColors.white, fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blackColor, 
        minimumSize: const Size(double.infinity, 50), 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
