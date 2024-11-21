import 'package:flutter/material.dart';
import 'package:flutter_assessment/slide_menu/view/slide_menu_screen.dart';

class LoginViewModel {
  String _email = '';
  String _password = '';
  bool _isPasswordVisible = false;

  // Getters
  String get email => _email;
  String get password => _password;
  bool get isPasswordVisible => _isPasswordVisible;

  // Setters
  void setEmail(String email) {
    _email = email;
  }

  void setPassword(String password) {
    _password = password;
  }

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
  }

  Future<void> login(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SideMenu()),
    );
  }
}
