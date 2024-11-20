import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  // Constructor to receive values
  CircleIconWidget({
    required this.icon,
    this.size = 50.0,
    this.iconSize = 24.0,
    this.backgroundColor = Colors.black,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Makes the container circular
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          icon,
          size: iconSize, // Set the size of the icon
          color: iconColor, // Set the color of the icon
        ),
      ),
    );
  }
}
