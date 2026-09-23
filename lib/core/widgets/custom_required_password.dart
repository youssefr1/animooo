import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/resources/color_manger.dart';
import '../../../../../../core/widgets/custom_text_form_feild.dart';
import '../functions/app_validators.dart';

class CustomRequiredPassword extends StatelessWidget {
  const CustomRequiredPassword({
    super.key,
    required this.onPressedAtEye,
    required this.visiblePassword,
    required this.text,
    required this.hintText,
    required this.controller,
     this.validator,
    this.useValidator =true, this.onChanged

  });

  final bool visiblePassword;

  final void Function() onPressedAtEye;
  final String text;
  final String hintText;
  final bool useValidator;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;


  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Password Form Field for SignUp
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
        CustomTextFormFeild(
          onChanged: onChanged,
          validator:useValidator ==true ?  (value) {
    return AppValidators.passwordValidator(value);
    }:null,
          obscureText: !visiblePassword,
          hintText: hintText,
          suffixIcon: IconButton(
            onPressed: onPressedAtEye,
            icon: Icon(
              visiblePassword
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 22.sp,
              color: Color(0xff686F80),
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          controller: controller,
        ),
      ],
    );
  }
}
