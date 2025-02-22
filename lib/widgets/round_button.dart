import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.type = RoundButtonType.bgPrimary});

  final String title;
  final VoidCallback onPressed;
  final RoundButtonType type;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        decoration: BoxDecoration(
          border: type == RoundButtonType.bgPrimary
              ? null
              : Border.all(
                  color: ColorPalette.primary,
                  width: 1,
                ),
          color: type == RoundButtonType.bgPrimary
              ? ColorPalette.primary
              : ColorPalette.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.bgPrimary
                ? ColorPalette.white
                : ColorPalette.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
