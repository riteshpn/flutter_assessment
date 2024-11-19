// views/horizontal_product_list.dart
import 'package:flutter/material.dart';
import 'package:flutter_assessment/home/product_model.dart';
import 'package:flutter_assessment/home/product_view_model.dart';

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
          return NewArrivaProductCard(newArrivalProduts: product);
        },
      ),
    );
  }
}

class NewArrivaProductCard extends StatelessWidget {
  final NewArrivalProduct newArrivalProduts;

  const NewArrivaProductCard({required this.newArrivalProduts});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      margin: EdgeInsets.symmetric(horizontal: 0),
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
              SizedBox(height: 15),
              Text(
                "BEST CHOICE",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              SizedBox(height: 1),
              Text(
                newArrivalProduts.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "r: ${newArrivalProduts.price.toString()}",
                style: TextStyle(
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
              newArrivalProduts.image,
              width: 150,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 0),
        ],
      ),
    );
  }
}
