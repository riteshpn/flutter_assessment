import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout/view_model/cart_view_model.dart';
import 'package:flutter_assessment/cart_checkout/widget/cart_item_widget.dart';
import 'package:flutter_assessment/cart_checkout/widget/total_cost_widget.dart';
import 'package:flutter_assessment/detail_screen/colors_extention.dart';
import 'package:flutter_assessment/sign_in/widget/circle_icon_widget.dart';

class CartCheckoutScreen extends StatefulWidget {
  const CartCheckoutScreen({super.key});

  @override
  State<CartCheckoutScreen> createState() => _CartCheckoutScreenState();
}

class _CartCheckoutScreenState extends State<CartCheckoutScreen> {
  final CartViewModel viewModel = CartViewModel();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleIconWidget(
                    icon: Icons.arrow_back,
                    iconColor: AppColors.primaryText,
                  ),
                  Spacer(),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Spacer(),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.items.length,
                  itemBuilder: (context, index) {
                    return CartItemWidget(
                      item: viewModel.items[index],
                      onIncrease: () => viewModel.increaseQuantity(index),
                      onDecrease: () => viewModel.decreaseQuantity(index),
                      onRemove: () => viewModel.removeItem(index),
                    );
                  },
                ),
              ),
              TotalCostWidget(
                subtotal: viewModel.subtotal,
                shopping: viewModel.shipping,
                totalCost: viewModel.totalCost,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
