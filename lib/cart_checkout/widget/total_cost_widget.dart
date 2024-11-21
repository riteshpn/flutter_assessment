import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout/widget/cart_item_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

// Toast Utility

class TotalCostWidget extends StatelessWidget {
  final double subtotal;
  final double shopping;
  final double totalCost;

  const TotalCostWidget({super.key, 
    required this.subtotal,
    required this.shopping,
    required this.totalCost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: const BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildCostRow("Subtotal", subtotal),
          const SizedBox(height: 8),
          _buildCostRow("Shopping", shopping),
          const SizedBox(height: 20),
          _buildCostRow("Total Cost", totalCost, isTotal: true),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blueColor,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              // Show toast message when checkout is pressed
              ToastWidget.showToast(
                message: "Proceeding to checkout!",
              );
            },
            child: const Center(
              child: Text(
                "Checkout",
                style: TextStyle(color: AppColors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCostRow(String label, double amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: isTotal ? AppColors.white : AppColors.greyColor,
            fontSize: isTotal ? 18 : 14,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          "\$${amount.toStringAsFixed(2)}",
          style: TextStyle(
            color: isTotal ? AppColors.white : AppColors.greyColor,
            fontSize: isTotal ? 18 : 14,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
