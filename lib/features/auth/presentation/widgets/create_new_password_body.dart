import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/widgets/custom_button.dart';
import 'package:animooo/core/widgets/custom_required_password.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/required_rules_for_password_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNewPasswordBody extends StatelessWidget {
  const CreateNewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create New Password',
              style: TextStyle(
                color: ColorManger.primary,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
            Gap(10),
            CustomRequiredPassword(
              onPressedAtEye: () {},
              visibilepassword: true,
              text: 'New Password',
              hintText: '********',
              controller: TextEditingController(),
            ),
            Gap(10),
            RequiredRulesForPasswordSignUp(),
            CustomRequiredPassword(
              onPressedAtEye: () {},
              visibilepassword: true,
              text: 'Confirm Password',
              hintText: '********',
              controller: TextEditingController(),
            ),
            Gap(82),
            CustomButton(text: 'Submit', onPressed: (){}),
            Gap(82)
          ],
        ),
      ),
    );
  }
}
