import 'package:flutter/material.dart';
import 'package:foodora/screens/authentication/welcome_screen.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  void initState() {
    super.initState();
    navigateToWelcomeScreen();
  }

  void navigateToWelcomeScreen() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
    );
    toWelcomeScreen();
  }

  void toWelcomeScreen() {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/splash_bg.png",
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/app_logo_white.png",
            width: size.width * 0.45,
            height: size.width * 0.45,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
