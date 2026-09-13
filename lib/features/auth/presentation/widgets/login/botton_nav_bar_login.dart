import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';

class BottomNavBarLogin extends StatelessWidget {
  const BottomNavBarLogin({
    super.key, required this.onPressedAtSignUpNow,
  });
final void Function() onPressedAtSignUpNow ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: GoogleFonts.poppins(
            color: ColorManger.greyColor,
            fontSize: 14,
          ),
          children: [
            const TextSpan(
              text: "Don't have an account? ",
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap =onPressedAtSignUpNow,
              text: "Sign Up Now",
              style: GoogleFonts.poppins(
                color: ColorManger.primary,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
