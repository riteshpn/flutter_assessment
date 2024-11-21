// viewmodels/cart_viewmodel.dart


import 'package:flutter_assessment/cart_checkout_screen/model/cart_item_model.dart';

class CartViewModel {
  final List<CartItem> _items = [
    CartItem(
      name: 'Sample 1',
      price: 64.95,
      image: 'assets/splashlogo.png',
      size: 'L',
    ),
    CartItem(
      name: 'Sample 2',
      price: 64.95,
      image: 'assets/splashlogo.png',
      size: 'XL',
    ),
    CartItem(
      name: 'Sample 3',
      price: 64.95,
      image: 'assets/splashlogo.png',
      size: 'XXL',
    ),
  ];

  List<CartItem> get items => _items;

  double get subtotal => _items.fold(0, (sum, item) => sum + (item.price * item.quantity));

  double get shipping => 40.90;

  double get totalCost => subtotal + shipping;

  void increaseQuantity(int index) {
    _items[index].quantity++;
  }

  void decreaseQuantity(int index) {
    if (_items[index].quantity > 1) {
      _items[index].quantity--;
    }
  }

  void removeItem(int index) {
    _items.removeAt(index);
  }
}
