import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout_screen/model/cart_item_model.dart';
import 'package:flutter_assessment/cart_checkout_screen/widget/circle_icon_button.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Toast Utility
class ToastWidget {
  static void showToast({
    required String message,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    double fontSize = 16.0,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize,
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onRemove;

  const CartItemWidget({super.key, 
    required this.item,
    required this.onIncrease,
    required this.onDecrease,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 1.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Item Image
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.blackColor,
            ),
            child: Image.asset(item.image, fit: BoxFit.contain),
          ),
          const SizedBox(width: 10),

          // Item Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(color: AppColors.white, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  "\$${item.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    CircleIconButton(
                      icon: Icons.remove,
                      iconColor: AppColors.white,
                      circleColor: AppColors.blackColor,
                      onPressed: onDecrease,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      item.quantity.toString(),
                      style: const TextStyle(color: AppColors.white),
                    ),
                    const SizedBox(width: 15),
                    CircleIconButton(
                      icon: Icons.add,
                      iconColor: AppColors.white,
                      circleColor: AppColors.blueColor,
                      onPressed: onIncrease,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Size and Delete Icon
          Column(
            children: [
              Text(
                item.size,
                style: const TextStyle(color: AppColors.white, fontSize: 14),
              ),
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.delete, color: AppColors.redColor),
                onPressed: () {
                
                  ToastWidget.showToast(
                    message: "${item.name} removed from cart",
                  );
                  onRemove(); 
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
