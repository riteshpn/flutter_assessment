

import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const EmailTextField({
    required this.controller,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email Address',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          
          style: const TextStyle(
            color: AppColors.white, 
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.filledcolor,
            hintText: 'Enter your email',
            hintStyle: const TextStyle(color: AppColors.greyColor),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none, 
            ),
          ),
        ),
      ],
    );
  }
}
