import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/features/auth/presentation/widgets/login/login_view_body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoginViewBody(),
        bottomNavigationBar: Padding(
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
                  recognizer: TapGestureRecognizer()..onTap = () {
                    print('hello');
                  },
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
        ),
      ),
    );
  }
}
