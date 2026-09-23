import 'package:animooo/core/functions/sign_up_controller.dart';
import 'package:animooo/core/routes/routes.dart';
import 'package:animooo/core/services/internet_checker_service.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/form_sign_up.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import '../../../../../core/widgets/app_logo_and_title.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../controller/sign_up_cubit.dart';
import 'botton_nav_bar_sign_up.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15.h),
              // App LOGO
              AppLogoWidget(),
              Text(
                'ANIMOOO',
                style: GoogleFonts.originalSurfer(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorManger.primary,
                ),
              ),
              SizedBox(height: 9.h),
              Text(
                'Sign Up',
                style: GoogleFonts.aldrich(
                  fontSize: 38.21.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorManger.primary,
                ),
              ),
              SizedBox(height: 30.h),

              // Login Form Fields
              FormSignUp(),

              SizedBox(height: 30.h),
              // Login Buttons

              CustomButton(
                text: 'Sign Up',
                onPressed: ()  {
                  if (cubit.formKey.currentState!.validate()) {
                    // ✅ All fields are valid!
                    print('Form is valid! Ready for API!');
                  }
                },
              ),

              BottonNavBarSignUp(
                onPressedAtSignUpNow: () {
                  context.go(AppRouter.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
