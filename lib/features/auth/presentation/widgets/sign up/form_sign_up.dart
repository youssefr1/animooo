import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/widgets/custom_required_feild.dart';
import 'package:animooo/core/widgets/custom_required_password.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/required_rules_for_password_sign_up.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_select_your_image_widget.dart';


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
          CustomRequiredFeild(text: 'First Name ', hintText: 'Enter your first name', controller: TextEditingController()),
          CustomRequiredFeild(text: 'Last Name', hintText: 'Enter your Last name', controller: TextEditingController()),
          CustomRequiredFeild(text: 'Email', hintText: 'Enter your email address', controller: TextEditingController()),
          CustomRequiredFeild(text: 'Phone', hintText: 'Enter your Phone ', controller: TextEditingController()),
         CustomRequiredPassword(text: 'Password', hintText: '********',onPressedAtEye: onPressedAtEye, visibilepassword: visibility!,  controller: TextEditingController()),
          SizedBox(height: 8.h),
          RequiredRulesForPasswordSignUp(),
          CustomRequiredPassword(text: 'Confirm Password', hintText: '********',onPressedAtEye: onPressedAtEye, visibilepassword: visibility!,  controller: TextEditingController()),
          Gap(16.h),
          Text(
            'Upload Image For Your Profile',
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontSize: 16.sp,
            ),
          ),
          Gap(12.h),
          CustomSelectYourImageWidget(),
        ],
      ),
    );
  }
}

