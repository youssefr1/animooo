import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';

class BottonNavBarSignUp extends StatelessWidget {
  const BottonNavBarSignUp({
    super.key, required this.onPressedAtSignUpNow,
  });
  final void Function() onPressedAtSignUpNow ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20,top: 8),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: GoogleFonts.poppins(
            color: ColorManger.greyColor,
            fontSize: 14.sp,
          ),
          children: [
            const TextSpan(
              text: "Have an account already? ",
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap =onPressedAtSignUpNow,
              text: "Log in",
              style: GoogleFonts.poppins(
                color: ColorManger.primary,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
