import 'package:flutter/material.dart';
import 'package:flutter_assessment/slide/view/slide_menu_screen.dart';

class LoginViewModel extends ChangeNotifier {
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
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }


  Future<void> login(BuildContext context) async {
    // if (_email.isEmpty || _password.isEmpty) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('Please fill in all fields.')),
    //   );
    //   return;
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SideMenu()), // HomePage is your target screen
    );
  }

  
}
