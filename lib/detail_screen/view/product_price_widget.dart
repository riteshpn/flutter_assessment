import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/colors_extention.dart';

class ProductPriceWidget extends StatelessWidget {
  final double price;

  const ProductPriceWidget({required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "\$${price.toStringAsFixed(2)}",
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: Text(
            "Add to Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
