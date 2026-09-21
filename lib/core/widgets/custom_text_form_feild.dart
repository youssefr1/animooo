import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/color_manger.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.validator,
    this.obscureText = false,
    required this.keyboardType,
    this.fillColor,
    this.controller,
    this.textAlign,
    this.focusNode,
    this.borderSide, this.onChanged,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final FormFieldValidator? validator;

  final TextInputType keyboardType;
  final Color? fillColor;
  final TextEditingController? controller;

  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final BorderSide? borderSide;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged: onChanged,
      focusNode: focusNode,
      textAlign: textAlign ?? TextAlign.start,
      controller: controller,
      style: TextStyle(
        fontSize: 16.sp,
        color: ColorManger.primary,
      ),
      textAlignVertical: TextAlignVertical.center,
      obscureText: obscureText,
      obscuringCharacter: '*',
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? const Color(0xFFF6F6F6),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xff686F80),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: borderSide ?? BorderSide.none,
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
