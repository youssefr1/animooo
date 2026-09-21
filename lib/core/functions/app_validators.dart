import 'package:flutter/src/widgets/framework.dart';

class AppValidators {
  static String? firstNameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Enter your first name';
    } else if (value.trim().length < 3) {
      return 'Enter your name must be at least 3 letter';
    } else {
      return null;
    }
  }

  static String? lastNameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Enter your last name';
    } else if (value.trim().length < 3) {
      return 'Enter your name must be at least 3 letter';
    } else {
      return null;
    }
  }

  static String? emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'this field is required';
    } else if (isEmail(value) == false) {
      return 'Enter valid email formation';
    } else {
      return null;
    }
  }static String? phoneValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'this field is required';
    } else if (isPhone(value) == false) {
      return 'Enter valid phone number';
    } else {
      return null;
    }
  }
  static bool isPhone(String value) {
    final phoneRegex = RegExp(r'^01[0125][0-9]{8}$');
    return phoneRegex.hasMatch(value);
  }

  static bool isEmail(String value) {
    final emailRegex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');

    return emailRegex.hasMatch(value);
  }

  static bool isStrongPassword(String value) {
    final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>_\-+=/\\]).{12,}$',
    );

    return passwordRegex.hasMatch(value);
  }

  static String? passwordValidator(String value) {
    if (value == null || value.trim().isEmpty) {
      return 'this field is required';
    } else if (isStrongPassword(value) == false) {
      return 'Enter valid password ';
    } else {
      return null;
    }
  }
}
