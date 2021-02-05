import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 21.0,
            ),
          ),
        ],
      ),
    );
  }
}
