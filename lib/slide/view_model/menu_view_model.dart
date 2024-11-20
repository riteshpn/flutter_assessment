import 'package:flutter_assessment/slide/model/menu_model.dart';

class MenuViewModel {
  final List<MenuItemModel> menuItems = [
    MenuItemModel(
      title: "Profile",
      imagePath: "assets/user.png",
    ),
    MenuItemModel(
      title: "Home",
      imagePath: "assets/home.png",
    ),
    MenuItemModel(
      title: "My Cart",
      imagePath: "assets/Frame.png",
    ),
    MenuItemModel(
      title: "My Cart",
      imagePath: "assets/heart.png",
    ),
    MenuItemModel(
      title: "Orders",
      imagePath: "assets/Fats.png",
    ),
    MenuItemModel(
      title: "Notification",
      imagePath: "assets/notification.png",
    ),
  ];
}
