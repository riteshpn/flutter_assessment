// views/horizontal_product_list.dart
import 'package:flutter/material.dart';
import 'package:flutter_assessment/home/model/product_model.dart';
import 'package:flutter_assessment/home/view_model/product_view_model.dart';

class NewArrivalWidget extends StatelessWidget {
  final ProductViewModel viewModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    final List<NewArrivalProduct> newArrivalProducts =
        viewModel.newArrivalProducts;

    return Container(
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

  const NewArrivaProductCard({required this.newArrivalProducts});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
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
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              const SizedBox(height: 1),
              Text(
                newArrivalProducts.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "r: ${newArrivalProducts.price.toString()}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
    );
  }
}