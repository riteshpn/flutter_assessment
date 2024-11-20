import 'package:flutter/material.dart';
import 'package:flutter_assessment/home/widget/bottom_navbar_widget.dart';
import 'package:flutter_assessment/home/widget/new_arrival_widget.dart';
import 'package:flutter_assessment/home/widget/product-list.dart';
import 'package:flutter_assessment/home/widget/sample_widget_list.dart';
import 'package:flutter_assessment/home/widget/search_widget.dart';
import 'package:flutter_assessment/sign_in/widget/circle_icon_widget.dart';
import 'package:flutter_assessment/slide/view/menu_widget.dart';
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
        backgroundColor: const Color(0xFF1A2530),
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
                        color: Colors.black, // Black background color
                        shape: BoxShape.circle, // Makes the container circular
                      ),
                      child:
                          const MenuWidget(), // Your child widget inside the container
                    ),
                    const Column(
                      children: [
                        Text(
                          "Store Location",
                          style: TextStyle(
                            color: Color(0xFF707B81),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            Text(
                              'Monodolibug,Sylhet',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    CircleIconWithDotWidget(
                      image: "assets/Frame.png",
                      size: 50.0,

                      backgroundColor: Colors.black,
                      iconColor: Colors.white,
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
                const CustomTabBar(
                  tabs: ["Sample 1", "Sample 2", "Sample 3", "Sample 4"],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Shoes",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arrivals",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
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
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(Icons.backpack, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
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
