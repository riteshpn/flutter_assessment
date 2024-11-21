// views/horizontal_product_list.dart
import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/view/product_detail_screen.dart';
import 'package:flutter_assessment/home/model/product_model.dart';
import 'package:flutter_assessment/home/view_model/product_view_model.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class NewArrivalWidget extends StatelessWidget {
  final ProductViewModel viewModel = ProductViewModel();

  NewArrivalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewArrivalProduct> newArrivalProducts =
        viewModel.newArrivalProducts;

    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newArrivalProducts.length,
        itemBuilder: (context, index) {
          final product = newArrivalProducts[index];
          return NewArrivaProductCard(newArrivalProducts: product);
        },
      ),
    );
  }
}

class NewArrivaProductCard extends StatelessWidget {
  final NewArrivalProduct newArrivalProducts;

  const NewArrivaProductCard({super.key, required this.newArrivalProducts});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
        );
      },
      child: Container(
        width: 335,
        margin: const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blackColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const Text(
                  "BEST CHOICE",
                  style: TextStyle(fontSize: 14, color: AppColors.blueColor),
                ),
                const SizedBox(height: 1),
                Text(
                  newArrivalProducts.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  // "r: ${newArrivalProducts.price.toString()}",
                  "\$${newArrivalProducts.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 25),
              child: Image.asset(
                newArrivalProducts.image,
                width: 150,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 0),
          ],
        ),
      ),
    );
  }
}
