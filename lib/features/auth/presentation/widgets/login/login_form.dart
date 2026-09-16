import 'package:animooo/core/widgets/custom_required_feild.dart';
import 'package:animooo/core/widgets/custom_required_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
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
        children: [
          CustomRequiredFeild(
            validator: (value) {
              //Todo : add email validation
              if (value == null || value.trim().isEmpty) {
                return 'Enter your Email Please';
              }else{
                return null ;
              }
            },
            text: 'Email',
            hintText: 'Enter your email address',
            controller: TextEditingController(),
          ),
          SizedBox(height: 8.h),
          CustomRequiredPassword(
            onPressedAtEye: onPressedAtEye,
            visibilepassword: visibility!,
            text: 'Password',
            hintText: '********',
            controller: TextEditingController(),
          ),
        ],
      ),
    );
  }
}
