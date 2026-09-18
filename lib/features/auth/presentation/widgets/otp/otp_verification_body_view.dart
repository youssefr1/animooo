import 'package:animooo/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import 'otp_verification_info.dart';

class OtpVerificationBodyView extends StatelessWidget {
  const OtpVerificationBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OtpVerificationInfo(),
          Gap(20),
          OtpTextField(
            margin: EdgeInsets.symmetric(horizontal: 5),

            textStyle: TextStyle(
              fontSize: 20.sp,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white,
            borderRadius: BorderRadius.circular(5.r),
            fieldWidth: 54.w,
            fieldHeight: 54.h,
            enabledBorderColor:Colors.grey,
            focusedBorderColor: ColorManger.primary,
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            // onSubmit: (String verificationCode){
            //   showDialog(
            //       context: context,
            //       builder: (context){
            //         return AlertDialog(
            //           title: Text("Verification Code"),
            //           content: Text('Code entered is $verificationCode'),
            //         );
            //       }
            //   );
            // }, // end onSubmit
          ),
          Gap(41),
          CustomButton(text: 'Confirm', onPressed: (){}),
          Center(
            child: TextButton(onPressed: (){}, child: Text('Resend Code In 00:59',style: TextStyle(
              color: ColorManger.greyColor,
              fontSize: 12.sp,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.w500,
            ),)),
          )


        ],
      ),
    );
  }
}
