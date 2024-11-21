import 'package:flutter/material.dart';
import 'package:flutter_assessment/cart_checkout_screen/widget/cart_item_widget.dart';
import 'package:flutter_assessment/detail_screen/view/product_detail_screen.dart';
import 'package:flutter_assessment/home_screen/widget/bottom_navbar_widget.dart';
import 'package:flutter_assessment/home_screen/widget/new_arrival_widget.dart';
import 'package:flutter_assessment/home_screen/widget/product-list.dart';
import 'package:flutter_assessment/home_screen/widget/sample_widget_list.dart';
import 'package:flutter_assessment/home_screen/widget/search_widget.dart';
import 'package:flutter_assessment/sign_in_screen/widget/circle_icon_widget.dart';
import 'package:flutter_assessment/slide_menu/widget/menu_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';
// Import the Custom Nav Bar

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        color: AppColors.blackColor,
                        shape: BoxShape.circle,
                      ),
                      child: const MenuWidget(),
                    ),
                    const Column(
                      children: [
                        Text(
                          "Store Location",
                          style: TextStyle(
                            color: AppColors.secondaryText,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.redColor,
                            ),
                            Text(
                              'Monodolibug,Sylhet',
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    CircleIconWithDotWidget(
                      message: "cart item selected",
                      image: "assets/Frame.png",
                      size: 50.0,

                      backgroundColor: AppColors.blackColor,
                      iconColor: AppColors.white,
                      showDot: true, // Enables the red dot
                      dotSize: 8.0, // Custom size for the dot
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SearchBarWidget(controller: searchController),
                const SizedBox(
                  height: 15,
                ),
                CustomTabBar(
                  tabs: const ["Sample 1", "Sample 2", "Sample 3", "Sample 4"],
                  onTabSelected: (index) {},
                  message: 'sample selected',
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Shoes",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen()));
                      },
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            color: AppColors.blueColor, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                HorizontalProductList(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Arrivals",
                      style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen()));
                      },
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            color: AppColors.blueColor, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                NewArrivalWidget(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ToastWidget.showToast(message: "cart button clicked");
          },
          backgroundColor: AppColors.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child:   const Icon(
            Icons.backpack,
            color: AppColors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTabSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
