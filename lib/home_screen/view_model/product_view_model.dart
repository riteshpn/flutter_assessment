// viewmodels/product_viewmodel.dart

import 'package:flutter_assessment/home_screen/model/product_model.dart';

class ProductViewModel {
  final List<Product> _products = [
    Product(
      name: 'Sample 1',
      image1: 'assets/splashlogo.png',
      price: 493.00,
    ),
    Product(
      name: 'Sample 2',
      image1: 'assets/splashlogo.png',
      price: 897.99,
    ),
    Product(
      name: 'Sample 3',
      image1: 'assets/splashlogo.png',
      price: 389.00,
    ),
  ];

  List<Product> get products => _products;


  //new arriv
  final List<NewArrivalProduct> _newArrivalProducts = [
    NewArrivalProduct(
        name: "Sample4", image: "assets/splashlogo.png", price: 849.69),
    NewArrivalProduct(
        name: "Sample4", image: "assets/splashlogo.png", price: 849.69)
  ];
  List<NewArrivalProduct> get newArrivalProducts => _newArrivalProducts;
}
