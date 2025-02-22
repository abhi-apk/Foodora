import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';
import 'package:foodora/screens/authentication/login_screen.dart';
import 'package:foodora/screens/authentication/sign_up_screen.dart';
import 'package:foodora/widgets/round_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/welcome_top_shape.png",
                width: size.width,
              ),
              Image.asset(
                "assets/images/app_logo.png",
                width: size.width * 0.45,
                height: size.width * 0.45,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: size.width * 0.1,
          ),
          Text(
            "Discover the best foods from over 1,000 \nrestaurants and fast delivery to your \ndoorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorPalette.secondaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: size.width * 0.1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: RoundButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  title: "Login")),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: RoundButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                },
                title: "Create an Account",
                type: RoundButtonType.textPrimary,
              )),
        ],
      ),
    );
  }
}
