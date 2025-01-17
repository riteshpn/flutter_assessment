// views/horizontal_product_list.dart
import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/view/product_detail_screen.dart';
import 'package:flutter_assessment/home_screen/model/product_model.dart';
import 'package:flutter_assessment/home_screen/view_model/product_view_model.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class HorizontalProductList extends StatelessWidget {
  final ProductViewModel viewModel = ProductViewModel();

  HorizontalProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = viewModel.products;

    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 150,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.blackColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      product.image1,
                      width: 90,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      const Text(
                        "BEST SELLER",
                        style: TextStyle(fontSize: 14, color: AppColors.blueColor),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    // "/: ${product.price.toString()}",
                    "\$${product.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Positioned Plus Sign
          Positioned(
            bottom: 0,
            right: 8,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
