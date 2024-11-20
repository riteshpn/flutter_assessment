import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final String hintText;

  const SearchBarWidget({
    required this.controller,
    this.onChanged,
    this.hintText = 'Search...',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.white, // Text color
      ),
      decoration: InputDecoration(
        fillColor: Colors.black, // Background color
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey, // Hint text color
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey, // Search icon color
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
          borderSide: BorderSide.none, // No visible border
        ),
      ),
    );
  }
}
