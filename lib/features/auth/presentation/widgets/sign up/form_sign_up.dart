import 'package:animooo/core/functions/app_validators.dart';
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
    required this.onPressedAtEyePassword,
    this.visibility,
    required this.onPressedAtEyeConfirmPassword,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.phoneController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final GlobalKey<FormState> formKey;
  final VoidCallback onPressedAtEyePassword;
  final VoidCallback onPressedAtEyeConfirmPassword;
  final bool? visibility;
  final TextEditingController firstNameController;

  final TextEditingController lastNameController;

  final TextEditingController emailController;

  final TextEditingController phoneController;

  final TextEditingController passwordController;

  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRequiredFeild(
            validator: (value) {
              return AppValidators.firstNameValidator(
                value,
              );
            },
            text: 'First Name ',
            hintText: 'Enter your first name',
            controller: firstNameController,
          ),
          CustomRequiredFeild(
            validator: (value) {
              return AppValidators.lastNameValidator(value);
            },
            text: 'Last Name',
            hintText: 'Enter your Last name',
            controller: lastNameController,
          ),
          CustomRequiredFeild(
            text: 'Email',
            hintText: 'Enter your email address',
            controller: emailController,
            validator: (value) {
              return AppValidators.emailValidator(value);
            },
          ),
          CustomRequiredFeild(
            text: 'Phone',
            hintText: 'Enter your Phone ',
            controller: phoneController,
          ),
          CustomRequiredPassword(
            text: 'Password',
            hintText: '********',
            onPressedAtEye: onPressedAtEyePassword,
            visibilepassword: visibility!,
            controller: passwordController,
          ),
          SizedBox(height: 8.h),
          RequiredRulesForPasswordSignUp(),
          CustomRequiredPassword(
            text: 'Confirm Password',
            hintText: '********',
            onPressedAtEye: onPressedAtEyeConfirmPassword,
            visibilepassword: visibility!,
            controller: confirmPasswordController,
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
          CustomSelectYourImageWidget(),
        ],
      ),
    );
  }
}
