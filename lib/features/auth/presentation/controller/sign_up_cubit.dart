import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../core/resources/consts_lists_mahnger.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isPasswordHidden = false;
  bool isConfirmPasswordHidden = false;

  @override
  Future<void> close() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }

  void togglePasswordVisibility() {
    isPasswordHidden = !isPasswordHidden;
    emit(SignUpChangePasswordVisibility());
  }
  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordHidden = !isConfirmPasswordHidden;
    emit(SignUpChangePasswordVisibility());
  }
  void validatePasswordRules(String value) {
    ConstsListsManger.passwordRequirements[0]['valid'] =
        value.length >= 8;

    ConstsListsManger.passwordRequirements[1]['valid'] =
        value.contains(RegExp(r'[A-Z]'));

    ConstsListsManger.passwordRequirements[2]['valid'] =
        value.contains(RegExp(r'[a-z]'));

    ConstsListsManger.passwordRequirements[3]['valid'] =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    ConstsListsManger.passwordRequirements[4]['valid'] =
        value.contains(RegExp(r'[0-9]'));

    emit(SignUpPasswordRulesChanged());
  }
}
