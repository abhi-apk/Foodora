import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';
import 'package:foodora/screens/authentication/new_password_screen.dart';
import 'package:foodora/widgets/round_button.dart';
import 'package:foodora/widgets/round_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              Text(
                "Reset Password",
                style: TextStyle(
                  color: ColorPalette.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Please enter your email to receive a \nlink to create a new password via email",
                style: TextStyle(
                  color: ColorPalette.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                textController: emailController,
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewPasswordScreen()));
                },
                title: "Send",
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Please enter your email to receive a 
// link to create a new password via email