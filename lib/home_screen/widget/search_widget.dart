import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final String hintText;

  const SearchBarWidget({
    required this.controller,
    this.onChanged,
    this.hintText = 'Search...',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(
        color: AppColors.white, // Text color
      ),
      decoration: InputDecoration(
        fillColor: AppColors.blackColor, // Background color
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.greyColor, // Hint text color
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.greyColor, // Search icon color
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
          borderSide: BorderSide.none, // No visible border
        ),
      ),
    );
  }
}
