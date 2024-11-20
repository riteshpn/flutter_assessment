import 'package:flutter/material.dart';
import 'package:flutter_assessment/sign_in/view_model/login_view_model.dart';
import 'package:flutter_assessment/splash/view/spalsh_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: OnboardingView()),
    );
  }
}
