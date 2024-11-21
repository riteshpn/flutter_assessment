import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/toast_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class CircleIconWidget extends StatelessWidget {
  final IconData icon;
  final String? message;
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
    this.backgroundColor = AppColors.blackColor,
    this.iconColor = AppColors.white,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       if (message != null && message!.isNotEmpty) {
          ToastWidget.showToast(message: message!);
        } 
         onPressed();
      },
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
  final String message;
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final bool showDot; // To toggle the red dot visibility
  final double dotSize; // Size of the red dot

  CircleIconWithDotWidget({
    required this.image,
    required this.message,
    this.size = 50.0,
    this.iconSize = 24.0,
    this.backgroundColor = AppColors.blackColor,
    this.iconColor = AppColors.white,
    this.showDot = false,
    this.dotSize = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ToastWidget.showToast(message: message);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
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
                  color: AppColors.redColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
