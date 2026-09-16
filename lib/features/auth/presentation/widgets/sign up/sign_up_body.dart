import 'package:animooo/core/routes/routes.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/form_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import '../../../../../core/widgets/app_logo_and_title.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'botton_nav_bar_sign_up.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
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
              FormSignUp(formKey:GlobalKey<FormState>() , onPressedAtEye: () {  },visibility:true ,),



              SizedBox(height: 30.h),
              // Login Buttons

              CustomButton(text: 'Sign Up', onPressed: () {  },),


              BottonNavBarSignUp(onPressedAtSignUpNow: () { context.go(AppRouter.login); },)
            ],
          ),
        ),
      ),
    );;
  }
}
