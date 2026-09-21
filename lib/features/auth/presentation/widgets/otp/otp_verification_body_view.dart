import 'package:animooo/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import '../../../../../core/routes/routes.dart';
import 'app_otp_verification_text_field.dart';
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
          AppOtpVerificationTextField(onComplete: (String value) {
            print(value);

          },),
          Gap(41),
          CustomButton(text: 'Confirm ', onPressed: (){
            context.push(AppRouter.createPassword);
          }),
          Center(
            child: TextButton(onPressed: (){}, child: Text('Resend Code ',style: TextStyle(
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
