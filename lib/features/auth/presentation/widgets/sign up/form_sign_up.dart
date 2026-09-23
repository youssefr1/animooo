import 'dart:developer';

import 'package:animooo/core/functions/app_validators.dart';
import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/resources/consts_lists_mahnger.dart';
import 'package:animooo/core/widgets/custom_required_feild.dart';
import 'package:animooo/core/widgets/custom_required_password.dart';
import 'package:animooo/features/auth/presentation/controller/sign_up_cubit.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/required_rules_for_password_sign_up.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_select_your_image_widget.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
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
                controller: cubit.firstNameController,
              ),
              CustomRequiredFeild(
                validator: (value) {
                  return AppValidators.lastNameValidator(
                    value,
                  );
                },
                text: 'Last Name',
                hintText: 'Enter your Last name',
                controller: cubit.lastNameController,
              ),
              CustomRequiredFeild(
                text: 'Email',
                hintText: 'Enter your email address',
                controller: cubit.emailController,
                validator: (value) {
                  return AppValidators.emailValidator(
                    value,
                  );
                },
              ),
              CustomRequiredFeild(
                text: 'Phone',
                hintText: 'Enter your Phone ',
                controller: cubit.phoneController,
                validator: (value) {
                  return AppValidators.phoneValidator(
                    value,
                  );
                },
              ),
              CustomRequiredPassword(
                onChanged: cubit.validatePasswordRules,
                text: 'Password',
                hintText: '********',
                onPressedAtEye:
                    cubit.togglePasswordVisibility,
                visiblePassword: cubit.isPasswordHidden,
                controller: cubit.passwordController,
              ),
              Gap(5),

              RequiredRulesForPasswordSignUp(),
              CustomRequiredPassword(
                useValidator: false,
                text: 'Confirm Password',
                hintText: '********',
                onPressedAtEye:
                    cubit.toggleConfirmPasswordVisibility,
                visiblePassword:
                    cubit.isConfirmPasswordHidden,
                controller: cubit.confirmPasswordController,
              ),
              Gap(16.h),
              Text(
                'Upload Image For Your Profile',
                style: TextStyle(
                  fontFamily:
                      GoogleFonts.poppins().fontFamily,
                  fontSize: 16.sp,
                ),
              ),
              Gap(12.h),
              CustomSelectYourImageWidget(),
            ],
          ),
        );
      },
    );
  }
}
