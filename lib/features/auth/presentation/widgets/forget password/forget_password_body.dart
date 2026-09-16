import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'email_forget_password_text_form_feild.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10),
          Text(
            'Forget Your Password ?',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily,
              color: ColorManger.primary,
            ),
          ),
          Gap(6.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'Please enter the email address associated with your account, and we\'l send you OTP to reset your password.',
                  style: TextStyle(
                    color: Color(0xff686F80),
                    fontSize: 14.sp,
                    fontFamily: GoogleFonts.poppins().fontFamily
                  ),
                ),
              ],
            ),
          ),
          Gap(56.h),
          EmailForgetPasswordTextFormField(onPreesedAtEye: () {  }, visibleConfirm: false,),
          Gap(151),
          CustomButton(text: 'Send  Code', onPressed: (){}),

        ],
      ),
    );
  }
}
