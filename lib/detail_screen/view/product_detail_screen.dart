import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/widget/product_image_gallery.dart';
import 'package:flutter_assessment/detail_screen/widget/product_image_slider.dart';
import 'package:flutter_assessment/detail_screen/widget/product_price_widget.dart';
import 'package:flutter_assessment/detail_screen/widget/product_size_selector.dart';
import 'package:flutter_assessment/detail_screen/view_model/detail_product_view.dart';
import 'package:flutter_assessment/sign_in_screen/widget/circle_icon_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductDetailViewModel productViewModel = ProductDetailViewModel();

  ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = productViewModel.getProductDetails();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleIconWidget(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icons.arrow_back,
                    iconColor: AppColors.white,
                  ),
                  const Text(
                    "Men's Shoes",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  CircleIconWidget(
                    message: "You click to the cart button",
                    onPressed: () {},
                    icon: Icons.shopping_cart,
                    iconColor: AppColors.white,
                  ),
                ],
              ),
              ProductImageSlider(
                image: product.image,
                bgImage: product.bgimage,
              ),
              const SizedBox(height: 16),
              const Text(
                "BEST SELLER",
                style: TextStyle(color: AppColors.blueColor, fontSize: 12),
              ),
              Text(
                product.name,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "\$${product.originalPrice.toStringAsFixed(2)}",
                style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                product.description,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Gallery",
                style: TextStyle(fontSize: 18, color: AppColors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              ProductGalleryWidget(
                gallery: product.gallery,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Size",
                    style: TextStyle(fontSize: 18, color: AppColors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "EU",
                        style: TextStyle(fontSize: 14, color: AppColors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "US",
                        style: TextStyle(fontSize: 14, color: AppColors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "UK",
                        style: TextStyle(fontSize: 14, color: AppColors.white),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              ProductSizeSelector(sizes: product.sizes),
              const SizedBox(height: 20),
              ProductPriceWidget(price: product.discountedPrice),
            ],
          ),
        ),
      ),
    );
  }
}
