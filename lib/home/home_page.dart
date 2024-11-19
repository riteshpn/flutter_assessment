import 'package:flutter/material.dart';
import 'package:flutter_assessment/home/bottom_navbar_widget.dart';
import 'package:flutter_assessment/home/new_arrival_widget.dart';
import 'package:flutter_assessment/home/product-list.dart';
import 'package:flutter_assessment/home/sample_widget_list.dart';
import 'package:flutter_assessment/home/search_widget.dart';
import 'package:flutter_assessment/sign_in/circle_icon_widget.dart';
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
                    CircleIconWidget(
                      icon: Icons.do_not_touch,
                    ),
                    Column(
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
                    CircleIconWidget(icon: Icons.ac_unit_rounded)
                  ],
                ),
                SearchBarWidget(controller: searchController),
                CustomTabBar(
                  tabs: ["Sample 1", "Sample 2", "Sample 3", "Sample 4"],
                ),
                Row(
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
                HorizontalProductList(),
                Row(
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
                NewArrivalWidget(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Icon(Icons.backpack, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                30), // Rounded corners if you want a pill-shaped FAB
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
