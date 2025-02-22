import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/login_screen.dart';
import 'package:fooddeliveryapp/screens/register_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initially, show login screen

  bool showLoginScreen = true;

  //toggle between login and register screen

  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(onTap: toggleScreens);
    } else {
      return RegisterScreen(onTap: toggleScreens);
    }
  }
}
