import 'package:flutter/material.dart';
import 'package:flutter_assessment/sign_in_screen/widget/circle_icon_widget.dart';
import 'package:flutter_assessment/sign_in_screen/widget/google_sign_in_button.dart';
import 'package:flutter_assessment/sign_in_screen/widget/password_widget.dart';
import 'package:flutter_assessment/sign_in_screen/widget/sign_in_button.dart';
import 'package:flutter_assessment/sign_in_screen/widget/text_field_widget.dart';
import 'package:flutter_assessment/common/extensions/color_extension.dart';
import 'package:flutter_assessment/sign_in_screen/view_model/login_view_model.dart'; 

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // Create the ViewModel instance
  final LoginViewModel _viewModel = LoginViewModel();

  // Controllers for TextFields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.05),
            CircleIconWidget(
              icon: Icons.arrow_back,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Text(
                'Hello Again!',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: screenWidth * 0.07,
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
                  color: AppColors.secondaryText,
                  fontSize: screenWidth * 0.045,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            // Email TextField
            EmailTextField(
              controller: _emailController,
              onChanged: (email) {
                _viewModel.setEmail(email); // Update viewModel with the email
              },
            ),
            SizedBox(height: screenHeight * 0.02),
            // Password TextField
            PasswordTextField(
              controller: _passwordController,
              isPasswordVisible: _viewModel.isPasswordVisible,
              onChanged: (password) {
                _viewModel.setPassword(
                    password); // Update viewModel with the password
              },
              onVisibilityToggle: () {
                setState(() {
                  _viewModel
                      .togglePasswordVisibility(); // Toggle password visibility
                });
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Recovery Password',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            // Sign-in button
            SignInButton(onPressed: () {
              _viewModel.login(context); // Trigger the login
            }),
            SizedBox(height: screenHeight * 0.03),
            // Google Sign-in button
            GoogleSignInButton(onPressed: () {}),
            SizedBox(height: screenHeight * 0.15),
            Center(
              child: TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't Have An Account? ",
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: screenWidth * 0.035,
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up For Free",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: screenWidth * 0.035,
                        ),
                      ),
                    ],
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
