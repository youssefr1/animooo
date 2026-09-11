import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/color_manger.dart';

class Custom_text_form_feild extends StatelessWidget {
  const Custom_text_form_feild({
    super.key,
    this.hintText,
    this.suffixIcon,   this.validator, this.obscureText =false, required this.keyboardType,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final FormFieldValidator?validator ;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 16.sp,
        color: ColorManger.primary,
      ),
      textAlignVertical: TextAlignVertical.center,
      obscureText:obscureText ,
      obscuringCharacter: '*',
      validator:validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(

        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 16,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xffF6F6F6),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xff686F80),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Color(0xffF6F6F6),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            width: 3,
            color: ColorManger.primary,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            width: 3,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
