import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/colors_extention.dart';

class ProductSizeSelector extends StatelessWidget {
  final List<int> sizes;

  const ProductSizeSelector({required this.sizes});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: sizes
          .map(
            (size) => Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: size == 40
                    ? AppColors.buttonBackground
                    : AppColors.cardBackground,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  size.toString(),
                  style: TextStyle(
                    color: AppColors.primaryText,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
