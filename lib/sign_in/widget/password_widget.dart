import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPasswordVisible;
  final ValueChanged<String> onChanged;
  final VoidCallback onVisibilityToggle;

  const PasswordTextField({
    required this.controller,
    required this.isPasswordVisible,
    required this.onChanged,
    required this.onVisibilityToggle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: !isPasswordVisible,
          // onChanged: onChanged,
          style: const TextStyle(
            color: AppColors.white, // Ensures input text is white and visible
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.filledcolor,
            hintText: 'Enter your password',
            hintStyle: const TextStyle(color: AppColors.greyColor),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible
                    ? Icons.visibility_sharp
                    : Icons.visibility_off,
                color: AppColors.white,
              ),
              onPressed: onVisibilityToggle,
            ),
          ),
        ),
      ],
    );
  }
}
