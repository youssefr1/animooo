import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';

class ForgetPasswordLogin extends StatelessWidget {
  const ForgetPasswordLogin({super.key, required this.onPressedAtForgetPassword});
  final void Function() onPressedAtForgetPassword ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 0,
          child: Stack(
            clipBehavior: Clip.none,
            children:[ Positioned(
              top:-10 ,
              right: 0,
              child: TextButton(
                onPressed:onPressedAtForgetPassword,
                child: Text(
                  'Forget Password...?',
                  style: TextStyle(
                    fontFamily:
                    GoogleFonts.poppins().fontFamily,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorManger.primary,
                    decorationThickness: 2,
                    color: ColorManger.primary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
