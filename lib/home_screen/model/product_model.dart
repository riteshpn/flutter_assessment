// product_model.dart
class Product {
  final String name;
  final String image1;

  final double price;

  Product({
    required this.name,
    required this.image1,
    required this.price,
  });
}


// new arrival product
class NewArrivalProduct {
  final String name;
  final String image;
  final double price;

  NewArrivalProduct({
    required this.name,
    required this.image,
    required this.price,
  });
}
