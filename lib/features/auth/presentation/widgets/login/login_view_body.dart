import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/routes/routes.dart';
import 'package:animooo/features/auth/presentation/views/forget_password_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/widgets/app_logo_and_title.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'forget_password_login.dart';
import 'login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
                'Log In',
                style: GoogleFonts.aldrich(
                  fontSize: 38.21.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorManger.primary,
                ),
              ),
              SizedBox(height: 30.h),

              // Login Form Fields
              LoginForm(
                formKey: GlobalKey<FormState>(),
                visibility: true,
                onPressedAtEye: () {},
              ),
              // Forget Password
              ForgetPasswordLogin(onPressedAtForgetPassword:(){
                context.push(AppRouter.forgetPassword);
              } ,),
              SizedBox(height: 25.h),
              // Login Button
              CustomButton(text: 'Log In', onPressed: () {  },),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}
