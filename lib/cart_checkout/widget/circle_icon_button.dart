import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon; // Icon to display
  final Color iconColor; // Color of the icon
  final Color circleColor; // Background color of the circle
  final VoidCallback onPressed; // Function to call when pressed

  const CircleIconButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.circleColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
        child: Center(
          child: Icon(
            icon, size: 15, // Icon passed as a parameter
            color: iconColor, // Icon color passed as a parameter
          ),
        ),
      ),
    );
  }
}
