import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';
import 'package:foodora/widgets/round_button.dart';
import 'package:foodora/widgets/round_textfield.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController newPasswordController = new TextEditingController();
    TextEditingController confirmPasswordController =
        new TextEditingController();

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
                "New Password",
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
                textController: newPasswordController,
                hintText: "New Password",
                isPassword: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                textController: confirmPasswordController,
                hintText: "Confirm Password",
                isPassword: true,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundButton(
                onPressed: () {},
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