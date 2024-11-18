import 'package:flutter/material.dart';
import 'package:flutter_assessment/sign_in/circle_icon_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1A2530),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
