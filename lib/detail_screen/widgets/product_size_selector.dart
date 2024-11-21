import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/toast_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

// Toast Utility


class ProductSizeSelector extends StatelessWidget {
  final List<int> sizes;

  const ProductSizeSelector({super.key, required this.sizes});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: sizes
          .map(
            (size) => GestureDetector(
              onTap: () {
                // Show toast message when size is tapped
                ToastWidget.showToast(
                  message: "Selected size: $size",
                );
              },
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: size == 40
                      ? AppColors.buttonBackground
                      : AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    size.toString(),
                    style: const TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
