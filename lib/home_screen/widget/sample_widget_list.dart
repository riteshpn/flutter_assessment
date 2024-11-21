// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/toast_widget.dart';

import 'package:flutter_assessment/common/extensions/color_extension.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int>? onTabSelected;
  final String message;

  const CustomTabBar(
      {super.key, required this.tabs, this.onTabSelected, required this.message});

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

              ToastWidget.showToast(
                  message: "Selected Tab:${widget.tabs[index]}");
              if (widget.onTabSelected != null) {
                widget.onTabSelected!(index);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.blueColor
                    : AppColors.transparentColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: selectedIndex == index
                      ? AppColors.transparentColor
                      : AppColors.greyColor,
                ),
              ),
              child: Text(
                widget.tabs[index],
                style: TextStyle(
                  color: selectedIndex == index
                      ? AppColors.white
                      : AppColors.greyColor,
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
