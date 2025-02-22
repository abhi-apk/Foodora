import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';

class RoundTextfield extends StatelessWidget {
  RoundTextfield({
    super.key,
    required this.textController,
    required this.hintText,
    this.keyboardType,
    this.isPassword = false,
  });

  final TextEditingController textController;
  final String hintText;
  final TextInputType? keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        autocorrect: false,
        controller: textController,
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorPalette.placeholder,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
