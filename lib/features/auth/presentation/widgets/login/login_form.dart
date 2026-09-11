import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.formKey});
final GlobalKey<FormState> formKey ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 6.h),
          Custom_text_form_feild(
            validator: (value) {
              if(value== null || value.trim().isEmpty){
                return 'Enter your email address';
                //Todo: add validation
              }else{
                return null;
              }
            } ,
            hintText: 'Enter your email address',
          ),
          SizedBox(height: 16.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorManger.greyColor,
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Custom_text_form_feild(
            obscureText: true,
            hintText: '********',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove_red_eye,
                size: 22.sp,
                color: Color(0xff686F80),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
