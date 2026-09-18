import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';

class OtpVerificationInfo extends StatelessWidget {
  const OtpVerificationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(10),
        Text(
          'OTP Verification ',
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
                'Please enter the 4 digit code sent your phone number',
                style: TextStyle(
                    color: Color(0xff686F80),
                    fontSize: 14.sp,
                    fontFamily: GoogleFonts.poppins().fontFamily
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
