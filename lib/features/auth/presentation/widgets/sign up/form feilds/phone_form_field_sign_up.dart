import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/resources/color_manger.dart';
import '../../../../../../core/widgets/custom_text_form_feild.dart';
class PhoneFormFieldSignUp extends StatelessWidget {
  const PhoneFormFieldSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Phone',
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
            if(value== null || value.trim().isEmpty){
              return 'Enter your Phone Number';
              //Todo: add validation
            }else{
              return null;
            }
          } ,
          hintText: 'Enter your Phone', keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}
