import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout_screen/view/cart_checkout_screen.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class ProductPriceWidget extends StatelessWidget {
  final double price;

  const ProductPriceWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Price",
              style: TextStyle(color: AppColors.greyColor),
            ),
            Text(
              "\$${price.toStringAsFixed(2)}",
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartCheckoutScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blueColor,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: const Text(
            "Add to Cart",
            style: TextStyle(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
