import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            // message, app slogan

            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,              
            ),

            const SizedBox(height: 10),
            // password textfield

            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,              
            ),

            //sign in button

            //not a member? register now
          ],
        ),
      ),
    );
  }
}
