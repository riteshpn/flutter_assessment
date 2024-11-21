import 'package:flutter/material.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';
import 'package:flutter_assessment/home/view/home_page.dart';
import 'package:flutter_assessment/slide/view/menu_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const MenuPage(),
      mainScreen: const HomePage(),
      borderRadius: 24.0,
      showShadow: false,
      angle: -12.0,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      menuBackgroundColor: AppColors.menubgcolor,
    );
  }
}
