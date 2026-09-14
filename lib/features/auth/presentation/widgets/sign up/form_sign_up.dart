import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/required_rules_for_password_sign_up.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form fields/confirm_password_form_field_sign_up.dart';
import 'form fields/email_form_field_sign_up.dart';
import 'form fields/first_name_form_field_sign_up.dart';
import 'form fields/last_name_form_field_sign_up.dart';
import 'form fields/password_form_field_sign_up.dart';
import 'form fields/phone_form_field_sign_up.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({
    super.key,
    required this.formKey,
    required this.onPressedAtEye,
    this.visibility,
  });

  final GlobalKey<FormState> formKey;

  final VoidCallback onPressedAtEye;
  final bool? visibility;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstNameFormFieldSignUp(),
          LastNameFormFieldSignUp(),
          EmailFormFieldSignUp(),
          PhoneFormFieldSignUp(),
          PasswordFormFieldSignUp(
            onPressedAtEye: () {},
            visibilepassword: true,
          ),
          SizedBox(height: 8.h),
          RequiredRulesForPasswordSignUp(),
          ConfirmPasswordFormFieldSignUp(
            onPreesedAtEye: () {},
            visibleConfirm: true,
          ),
          Gap(16.h),
          Text(
            'Upload Image For Your Profile',
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 16.sp,
            ),
          ),
          Gap(12.h),
          DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(10.r),
              dashPattern: [2,2],
              strokeWidth: 2,
              color: ColorManger.primary
            ),
            child: SizedBox(
              height: 200.h,
              width: 339.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image,color: ColorManger.primary,size: 30.sp,),
                  Gap(16.h),
                  Text(
                    'Select file',
                    style: TextStyle(
                      fontFamily:
                          GoogleFonts.urbanist().fontFamily,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
