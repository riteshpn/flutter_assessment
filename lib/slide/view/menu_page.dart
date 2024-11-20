// import 'package:flutter/material.dart';

// class MenuPage extends StatelessWidget {
//   const MenuPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF2D3B4B),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const CircleAvatar(
//                 backgroundColor: Colors.white,
//                 radius: 30,
//                 backgroundImage:
//                     AssetImage('assets/pic.png'), // Add your image asset here
//               ),
//               const SizedBox(width: 15),
//               const Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Hey, 👋",
//                     style: TextStyle(color: Colors.white70, fontSize: 16),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Alisson Becker",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 40),
//               // Menu Items
//               _menuItem(Icons.person, "Profile", () {}),
//               _menuItem(Icons.home, "Home", () {}),

//               _menuItem(Icons.shopping_cart, "My Cart", () {}),
//               _menuItem(Icons.favorite, "Favorites", () {}),
//               _menuItem(Icons.history, "Orders", () {}),
//               _menuItem(Icons.settings, "Notification", () {}),
//               const Spacer(),
//               // Logout Section
//               const Divider(color: Colors.white38),
//               _menuItem(Icons.exit_to_app, "Sign Out", () {
//                 // Add your logout logic here
//               }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _menuItem(IconData icon, String title, VoidCallback onTap) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 15.0),
//         child: Row(
//           children: [
//             Icon(icon, color: Colors.white70, size: 24),
//             const SizedBox(width: 20),
//             Text(
//               title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_assessment/slide/view_model/menu_view_model.dart';
import 'package:flutter_assessment/slide/widget/menu_item_widget.dart';

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
                backgroundColor: Colors.white,
                radius: 30,
                backgroundImage:
                    AssetImage('assets/pic.png'), // Add your image asset here
              ),
              const SizedBox(width: 15),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey, 👋",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Alisson Becker",
                    style: TextStyle(
                      color: Colors.white,
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
              const Divider(color: Colors.white38),
              _menuItem(Icons.exit_to_app, "Sign Out", () {
                // Add your logout logic here
              }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _menuItem(IconData icon, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 24),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );
}
