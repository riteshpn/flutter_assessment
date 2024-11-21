import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout_screen/widget/cart_item_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;
  final int currentIndex;

  const CustomBottomNavigationBar({
    super.key,
    required this.onTabSelected,
    this.currentIndex = 0,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<String> tabLabels = [
    "Home",
    "Favorites",
    "Notifications",
    "Profile"
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.blackColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 15.0,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTabItem(index: 0, icon: Icons.home),
            _buildTabItem(index: 1, icon: Icons.favorite_outline),
            const SizedBox(width: 30), // Spacer for FAB
            _buildTabItem(index: 2, icon: Icons.notifications_none),
            _buildTabItem(index: 3, icon: Icons.person_outline),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({required int index, required IconData icon}) {
    final bool isSelected = widget.currentIndex == index;

    return IconButton(
      icon: Icon(
        icon,
        color: isSelected ? AppColors.white : AppColors.greyColor,
      ),
      onPressed: () {
        ToastWidget.showToast(
          message: "Selected: ${tabLabels[index]}",
        );
        widget
            .onTabSelected(index); 
      },
    );
  }
}
