// widgets/cart_item_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout/model/cart_item_model.dart';
import 'package:flutter_assessment/cart_checkout/widget/circle_icon_button.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onRemove;

  const CartItemWidget({
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
              color: Colors.black,
            ),
            child: Image.asset(item.image, fit: BoxFit.contain),
          ),
          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  "\$${item.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleIconButton(
                      icon: Icons.remove,
                      iconColor: Colors.white,
                      circleColor: Colors.black,
                      onPressed: onDecrease,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      item.quantity.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CircleIconButton(
                      icon: Icons.add,
                      iconColor: Colors.white,
                      circleColor: Colors.blue,
                      onPressed: onIncrease,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Quantity Controls

          // Size
          Column(
            children: [
              Text(
                item.size,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: onRemove,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
