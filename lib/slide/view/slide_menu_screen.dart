// import 'package:flutter/material.dart';
// import 'package:flutter_assessment/home/view/home_page.dart';
// import 'package:flutter_assessment/slide/view/menu_page.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

// class SideMenu extends StatefulWidget {
//   const SideMenu({Key? key}) : super(key: key);

//   @override
//   State<SideMenu> createState() => _SideMenuState();
// }

// class _SideMenuState extends State<SideMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return ZoomDrawer(
//       menuScreen: const MenuPage(),
//       mainScreen: const HomePage(),
//       borderRadius: 30.0, // Rounds the edges of the main screen
//       showShadow: false, // Enables shadow for the drawer
//       angle: -10, // Controls the rotation angle of the drawer
//       slideWidth:
//           MediaQuery.of(context).size.width * 0.80, // Drawer slide width
//       menuBackgroundColor:
//           const Color(0xFF2D3B48), // Background color of the menu
//       drawerShadowsBackgroundColor:
//           const Color.fromARGB(255, 152, 147, 147), // Shadow color
//       openCurve: Curves.bounceInOut, // Animation curve when opening
//       closeCurve: Curves.bounceIn, // Animation curve when closing
//       mainScreenTapClose:
//           true, // Close the drawer when the main screen is tapped
//     );
//   }
// }
import 'package:flutter/material.dart';
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
      menuBackgroundColor: const Color(0xFF2D3B48),
    );
  }
}
