import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onTabSelected;
  final int currentIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.onTabSelected,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      shape: CircularNotchedRectangle(

      ),
      notchMargin: 15.0,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            _buildTabItem(
              index: 0,
              icon: Icons.home,
            ),
            _buildTabItem(
              index: 1,
              icon: Icons.favorite_outline,
            ),
            SizedBox(width:30),
            _buildTabItem(
              index: 2,
              icon: Icons.notifications_none,
            ),
            _buildTabItem(
              index: 3,
              icon: Icons.person_outline,
            ),
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
        color: isSelected ? Colors.white : Colors.grey,
      ),
      onPressed: () => widget.onTabSelected(index),
    );
  }
}
