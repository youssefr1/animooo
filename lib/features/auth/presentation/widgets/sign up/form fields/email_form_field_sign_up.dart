import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/resources/color_manger.dart';
import '../../../../../../core/widgets/custom_text_form_feild.dart';

class EmailFormFieldSignUp extends StatelessWidget {
  const EmailFormFieldSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Email',
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorManger.greyColor,
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Custom_text_form_feild(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Enter your email address';
              //Todo: add validation
            } else {
              return null;
            }
          },
          hintText: 'Enter your email address',
          keyboardType: TextInputType.emailAddress,
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
