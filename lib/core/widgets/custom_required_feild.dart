import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/resources/color_manger.dart';
import '../../../../../../core/widgets/custom_text_form_feild.dart';

class CustomRequiredFeild extends StatelessWidget {
  const CustomRequiredFeild(
      {super.key,  required this.text, required this.hintText, required this.controller});

  final String text;

  final String hintText;

 final TextEditingController controller;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
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
            if (value == null || value
                .trim()
                .isEmpty) {
              return 'Enter your email address';
              //Todo: add validation
            } else {
              return null;
            }
          },
          hintText: hintText,
          keyboardType: TextInputType.emailAddress,
          controller: controller,
        ),
      ],
    );
  }
}
