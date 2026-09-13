import 'package:animooo/features/auth/presentation/widgets/sign%20up/form%20feilds/password_form_field_sign_up.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/form%20feilds/phone_form_field_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import 'form feilds/confirm_password_form_field_sign_up.dart';
import 'form feilds/email_form_field_sign_up.dart';
import 'form feilds/first_name_form_field_sign_up.dart';
import 'form feilds/last_name_form_field_sign_up.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key, required this.formKey, required this.onPressedAtEye, this.visibility});
  final GlobalKey<FormState> formKey ;
  final VoidCallback onPressedAtEye;
  final bool? visibility;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          FirstNameFormFieldSignUp(),
          LastNameFormFieldSignUp(),
          EmailFormFieldSignUp(),
          PhoneFormFieldSignUp(),
          PasswordFormFieldSignUp(onPressedAtEye: () {}, visibilepassword: true,),
          ConfirmPasswordFormFieldSignUp(onPreesedAtEye: () {  }, visibleConfirm: true,)
         


        ],
      ),
    );
  }
}
