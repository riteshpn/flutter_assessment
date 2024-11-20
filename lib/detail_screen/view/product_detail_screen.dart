import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/colors_extention.dart';
import 'package:flutter_assessment/detail_screen/view/product_image_gallery.dart';
import 'package:flutter_assessment/detail_screen/view/product_image_slider.dart';
import 'package:flutter_assessment/detail_screen/view/product_price_widget.dart';
import 'package:flutter_assessment/detail_screen/view/product_size_selector.dart';
import 'package:flutter_assessment/detail_screen/view_model/detail_product_view.dart';
import 'package:flutter_assessment/sign_in/widget/circle_icon_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductDetailViewModel productViewModel = ProductDetailViewModel();

  @override
  Widget build(BuildContext context) {
    final product = productViewModel.getProductDetails();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
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
                    icon: Icons.arrow_back,
                    iconColor: AppColors.primaryText,
                  ),
                  const Text(
                    "Men's Shoes",
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  CircleIconWidget(
                    icon: Icons.shopping_cart,
                    iconColor: AppColors.primaryText,
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
                style: TextStyle(color: AppColors.priceColor, fontSize: 12),
              ),
              Text(
                product.name,
                style: const TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "\$${product.originalPrice.toStringAsFixed(2)}",
                style: const TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                product.description,
                style: const TextStyle(
                  color: AppColors.secondaryText,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Gallery",
                style: TextStyle(fontSize: 18, color: AppColors.primaryText),
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
                    style:
                        TextStyle(fontSize: 18, color: AppColors.primaryText),
                  ),
                  Row(
                    children: [
                      Text(
                        "EU",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.primaryText),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "US",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.primaryText),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "UK",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.primaryText),
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
