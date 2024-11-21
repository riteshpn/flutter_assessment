
import 'package:flutter/material.dart';
import 'package:flutter_assessment/slide_menu/view_model/menu_view_model.dart';
import 'package:flutter_assessment/slide_menu/widget/menu_item_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = MenuViewModel();

    return Scaffold(
      backgroundColor: const Color(0xFF2D3B4B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 30,
                backgroundImage:
                    AssetImage('assets/pic.png'),
              ),
              const SizedBox(width: 15),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey, 👋",
                    style: TextStyle(color: AppColors.greyColor, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Alisson Becker",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.menuItems.length,
                  itemBuilder: (context, index) {
                    return MenuItemWidget(item: viewModel.menuItems[index]);
                  },
                ),
              ),
              const Divider(color: AppColors.greyColor),
              _menuItem(Icons.exit_to_app, "Sign Out", () {
              
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _menuItem(
  IconData icon, 
  String title, 
  VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.greyColor, size: 24),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
