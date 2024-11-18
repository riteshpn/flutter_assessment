import 'package:flutter/material.dart';
import 'package:flutter_assessment/sign_in/circle_icon_widget.dart';
import 'package:flutter_assessment/sign_in/google_sign_in_button.dart';
import 'package:flutter_assessment/sign_in/password_widget.dart';
import 'package:flutter_assessment/sign_in/sign_in_button.dart';
import 'package:flutter_assessment/sign_in/text_field_widget.dart';
import 'package:provider/provider.dart';

import 'login_view_model.dart'; // Replace with your actual import path

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    // Get the device's height and width
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF1A2530), 
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth * 0.04), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.05), 
            CircleIconWidget(icon: Icons.abc),
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Text(
                'Hello Again!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:
                      screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Center(
              child: Text(
                'Welcome Back You\'ve Been Missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF707B81),
                  fontSize: screenWidth * 0.045, 
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            // Email TextField
            EmailTextField(
              controller: emailController,
              onChanged: viewModel.setEmail,
            ),
            SizedBox(height: screenHeight * 0.02),
            // Password TextField
            PasswordTextField(
              controller: passwordController,
              isPasswordVisible: viewModel.isPasswordVisible,
              onChanged: viewModel.setPassword,
              onVisibilityToggle: viewModel.togglePasswordVisibility,
            ),
           
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Recovery Password',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.045, 
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            // Sign-in button
            SignInButton(onPressed: () => viewModel.login(context)),
            SizedBox(height: screenHeight * 0.02),
            // Google Sign-in button
            GoogleSignInButton(onPressed: () {}),
            SizedBox(height: screenHeight * 0.05),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Don't Have An Account? Sign Up For Free",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
