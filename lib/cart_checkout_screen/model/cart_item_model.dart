
class CartItem {
  final String name;
  final double price;
  final String image;
  final String size;
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    required this.image,
    required this.size,
    this.quantity = 1,
  });
}
