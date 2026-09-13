import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.formKey, required this.onPressedAtEye,  this.visibility});
final GlobalKey<FormState> formKey ;
  final VoidCallback onPressedAtEye;
  final bool? visibility;
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
            hintText: 'Enter your email address', keyboardType: TextInputType.emailAddress,
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
            validator:(value) {
               if(value== null || value.trim().isEmpty){
                 return 'Enter your password';
                 //Todo: add validation
               }else{
                 return null;
               }
            } ,
            obscureText: true,
            hintText: '********',
            suffixIcon: IconButton(
              onPressed: onPressedAtEye,
              icon: Icon(
                visibility == true ? Icons.visibility_outlined:Icons.visibility_off_outlined,
                size: 22.sp,
                color: Color(0xff686F80),
              ),
            ), keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
