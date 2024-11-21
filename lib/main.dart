import 'package:flutter/material.dart';
import 'package:flutter_assessment/splash/view/spalsh_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: OnboardingView());
  }
}
