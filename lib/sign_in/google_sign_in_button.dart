import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleSignInButton({required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Image.asset('assets/G.png', height: 24), // Add a Google logo asset
      label: Text('Sign in with Google'),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        side: BorderSide(color: Colors.blue),
      ),
    );
  }
}



// width: Fixed (335px)px;
// height: Hug (54px)px;
// top: 574px;
// left: 20px;
// padding: 15px 32px 15px 32px;
// gap: 8px;
// border-radius: 50px 0px 0px 0px;
// opacity: 0px;
// background: #161F28;



// background: #1A2530;
