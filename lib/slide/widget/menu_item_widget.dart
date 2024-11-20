import 'package:flutter/material.dart';
import 'package:flutter_assessment/slide/model/menu_model.dart';

class MenuItemWidget extends StatelessWidget {
  final MenuItemModel item;

  const MenuItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Row(
          children: [
            if (item.icon != null)
              Icon(item.icon, size: 24.0, color: Colors.white)
            else if (item.imagePath != null)
              Image.asset(
                item.imagePath!,
                width: 24.0,
                height: 24.0,
                fit: BoxFit.contain,
              ),
            const SizedBox(width: 16.0),
            Text(
              item.title,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
