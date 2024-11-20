import 'package:flutter/material.dart';
import 'package:flutter_assessment/detail_screen/view/product_detail_screen.dart';
import 'package:flutter_assessment/sign_in/view_model/login_view_model.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: OnboardingView());
//   }
// }

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
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: ProductDetailsScreen()),
    );
  }
}
