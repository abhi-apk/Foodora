import 'package:flutter/material.dart';
import 'package:foodora/components/ColorPalette.dart';
import 'package:foodora/screens/authentication/login_screen.dart';
import 'package:foodora/widgets/google_sign_in_button.dart';
import 'package:foodora/widgets/round_button.dart';
import 'package:foodora/widgets/round_textfield.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                "We have sent an OTP to your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorPalette.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Please check your mobile number 071*****12\ncontinue to reset your password",
                style: TextStyle(
                  color: ColorPalette.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 60,
                child: SizedBox(
                  height: 60,
                  child: OtpPinField(
                      key: _otpPinFieldController,
                      autoFillEnable: true,

                      ///for Ios it is not needed as the SMS autofill is provided by default, but not for Android, that's where this key is useful.
                      textInputAction: TextInputAction.done,

                      ///in case you want to change the action of keyboard
                      /// to clear the Otp pin Controller
                      onSubmit: (newCode) {
                        // code = newCode;
                        // btnSubmit();
                        /// return the entered pin
                      },
                      onChange: (newCode) {
                        // code = newCode;

                        /// return the entered pin
                      },
                      onCodeChanged: (newCode) {
                        // code = newCode;
                      },
                      fieldWidth: 40,

                      /// to decorate your Otp_Pin_Field
                      otpPinFieldStyle: OtpPinFieldStyle(

                          /// border color for inactive/unfocused Otp_Pin_Field
                          defaultFieldBorderColor: Colors.transparent,

                          /// border color for active/focused Otp_Pin_Field
                          activeFieldBorderColor: Colors.transparent,

                          /// Background Color for inactive/unfocused Otp_Pin_Field
                          defaultFieldBackgroundColor: ColorPalette.textfield,
                          activeFieldBackgroundColor: ColorPalette.textfield

                          /// Background Color for active/focused Otp_Pin_Field
                          ),
                      maxLength: 6,

                      /// no of pin field
                      showCursor: true,

                      /// bool to show cursor in pin field or not
                      cursorColor: ColorPalette.placeholder,

                      /// to choose cursor color
                      upperChild: const Column(
                        children: [
                          SizedBox(height: 30),
                          Icon(Icons.flutter_dash_outlined, size: 150),
                          SizedBox(height: 20),
                        ],
                      ),
                      showCustomKeyboard: false,

                      ///bool which manage to show custom keyboard
                      // customKeyboard: Container(),  /// Widget which help you to show your own custom keyboard in place if default custom keyboard
                      // showDefaultKeyboard: true,  ///bool which manage to show default OS keyboard
                      cursorWidth: 3,

                      /// to select cursor width
                      mainAxisAlignment: MainAxisAlignment.center,

                      /// place otp pin field according to yourselft

                      /// predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
                      ///use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
                      otpPinFieldDecoration:
                          OtpPinFieldDecoration.defaultPinBoxDecoration),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RoundButton(
                onPressed: () {},
                title: "Next",
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
                      "Didn't Receive? ",
                      style: TextStyle(
                        color: ColorPalette.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Click Here",
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
