
import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorPalette.primary,
                      width: 1,
                    ),
                    color: ColorPalette.white,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google_logo.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                          color: ColorPalette.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}