import 'package:flutter/material.dart';



class CircleIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onPressed; // Add this parameter to handle navigation

  // Constructor to receive values
  CircleIconWidget({
    required this.icon,
    required this.onPressed, // Required onPressed callback
    this.size = 50.0,
    this.iconSize = 24.0,
    this.backgroundColor = Colors.black,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the onPressed callback when tapped
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}


// notification

class CircleIconWithDotWidget extends StatelessWidget {
  final String image;
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final bool showDot; // To toggle the red dot visibility
  final double dotSize; // Size of the red dot

  CircleIconWithDotWidget({
    required this.image,
    this.size = 50.0,
    this.iconSize = 24.0,
    this.backgroundColor = Colors.black,
    this.iconColor = Colors.white,
    this.showDot = false,
    this.dotSize = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior:
          Clip.none, // Allows positioning the dot outside the main circle
      children: [
        // Main circle icon
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          child: Center(
            child: Image.asset(
              image,
            ),
          ),
        ),

        // Red notification dot
        if (showDot)
          Positioned(
            top: -3,
            right: 6,
            child: Container(
              width: dotSize,
              height: dotSize,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
