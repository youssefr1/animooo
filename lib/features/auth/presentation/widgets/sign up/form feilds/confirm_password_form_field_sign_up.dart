import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/resources/color_manger.dart';
import '../../../../../../core/widgets/custom_text_form_feild.dart';

class ConfirmPasswordFormFieldSignUp extends StatelessWidget {
  const ConfirmPasswordFormFieldSignUp({super.key, required this.onPreesedAtEye, required this.visibleConfirm});
final bool visibleConfirm ;
final void Function() onPreesedAtEye;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Password Form Field for SignUp
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Confirm Password',
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: ColorManger.greyColor,
            ),
          ),
        ),
        SizedBox(height: 6.h),
        Custom_text_form_feild(
          validator:(value) {
            if(value== null || value.trim().isEmpty){
              return 'Enter your password';
              //Todo: add validation
            }else{
              return null;
            }
          } ,
          obscureText: !visibleConfirm,
          hintText: '*********',
          suffixIcon: IconButton(
            onPressed: onPreesedAtEye,
            icon: Icon(
              visibleConfirm ? Icons.visibility_outlined:Icons.visibility_off_outlined,
              size: 22.sp,
              color: Color(0xff686F80),
            ),
          ), keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
