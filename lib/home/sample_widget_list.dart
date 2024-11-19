import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int>? onTabSelected;

  const CustomTabBar({
    required this.tabs,
    this.onTabSelected,
    Key? key,
  }) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0; // Track the selected tab index

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.tabs.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              if (widget.onTabSelected != null) {
                widget.onTabSelected!(index);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color:
                    selectedIndex == index ? Colors.blue : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color:
                      selectedIndex == index ? Colors.transparent : Colors.grey,
                ),
              ),
              child: Text(
                widget.tabs[index],
                style: TextStyle(
                  color: selectedIndex == index ? Colors.white : Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
