import 'package:animooo/features/auth/presentation/widgets/sign%20up/required_rules_for_password_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'form fields/confirm_password_form_field_sign_up.dart';
import 'form fields/email_form_field_sign_up.dart';
import 'form fields/first_name_form_field_sign_up.dart';
import 'form fields/last_name_form_field_sign_up.dart';
import 'form fields/password_form_field_sign_up.dart';
import 'form fields/phone_form_field_sign_up.dart';

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
          SizedBox(height: 8.h,),
          RequiredRulesForPasswordSignUp(),
          ConfirmPasswordFormFieldSignUp(onPreesedAtEye: () {  }, visibleConfirm: true,)



        ],
      ),
    );
  }
}
