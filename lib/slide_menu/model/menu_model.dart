import 'package:flutter/material.dart';

class MenuItemModel {
  final String title;
  final IconData? icon;
  final String? imagePath;
  final VoidCallback? onTap;

  MenuItemModel({
    required this.title,
    this.icon,
    this.imagePath,
    this.onTap,
  });
}
