import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/resources/width_manger.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/assets_value.dart';
import '../../../../../core/widgets/app_logo_and_title.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
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
              SizedBox(height: 15.h,),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorManger.greyColor,
                  ),
                ),
              ),
              LoginForm(formKey: GlobalKey<FormState>(),),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontFamily:
                          GoogleFonts.poppins().fontFamily,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorManger.primary,
                      decorationThickness: 2,
                      color: ColorManger.primary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              SizedBox(
                width: double.infinity,
                height: 44.h,
                child: ElevatedButton(
                  onPressed: () {},style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManger.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  )
                ),
                  child: Text('Login',style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),),
                ),

              ),SizedBox(height: 15.h),

            ],
          ),
        ),
      ),
    );
  }
}
