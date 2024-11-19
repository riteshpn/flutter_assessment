// views/horizontal_product_list.dart
import 'package:flutter/material.dart';
import 'package:flutter_assessment/home/product_model.dart';
import 'package:flutter_assessment/home/product_view_model.dart';

class HorizontalProductList extends StatelessWidget {
  final ProductViewModel viewModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    final List<Product> products = viewModel.products;

    return Container(
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

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
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
                  SizedBox(width: 10),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "BEST SELLER",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    SizedBox(height: 4),
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "r: ${product.price.toString()}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
