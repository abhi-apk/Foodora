import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';
import 'package:foodora/screens/authentication/login_screen.dart';
import 'package:foodora/screens/authentication/otp_verification_screen.dart';
import 'package:foodora/widgets/google_sign_in_button.dart';
import 'package:foodora/widgets/round_button.dart';
import 'package:foodora/widgets/round_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                "Sign Up",
                style: TextStyle(
                  color: ColorPalette.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Add your details to sign up",
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
                textController: nameController,
                hintText: "Name",
                keyboardType: TextInputType.name,
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
              RoundTextfield(
                textController: mobileNoController,
                hintText: "Mobile No",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                textController: addressController,
                hintText: "Address",
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextfield(
                textController: passwordController,
                hintText: "Password",
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OtpVerificationScreen(),
                    ),
                  );
                },
                title: "Sign up",
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style: TextStyle(
                        color: ColorPalette.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Login ",
                      style: TextStyle(
                        color: ColorPalette.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
