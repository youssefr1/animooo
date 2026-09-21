import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AppOtpVerificationTextField extends StatefulWidget {
  const AppOtpVerificationTextField({
    super.key,
    required this.onComplete,
  });

  final void Function(String value) onComplete;

  @override
  State<AppOtpVerificationTextField> createState() =>
      _AppOtpVerificationTextFieldState();
}

class _AppOtpVerificationTextFieldState
    extends State<AppOtpVerificationTextField> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  late TextEditingController controller5;
  late FocusNode focusNode1 = FocusNode();
  late FocusNode focusNode2 = FocusNode();
  late FocusNode focusNode3 = FocusNode();
  late FocusNode focusNode4 = FocusNode();
  late FocusNode focusNode5 = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    focusNode5 = FocusNode();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    controller5 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((
      timeStamp,
    ) {
      focusNode1.requestFocus();
    });
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    focusNode5.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    super.dispose();
  }

  void nextField(
    String value,
    FocusNode focusNode,
    TextEditingController controller,
  ) {
    if (value.trim().isNotEmpty) {
      if (value.length > 1) {
        controller.text = value[value.length - 1];
      }
      FocusScope.of(context).requestFocus(focusNode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormFeild(
            controller: controller1,
            keyboardType: TextInputType.number,
            fillColor: Colors.white60,
            textAlign: TextAlign.center,
            focusNode: focusNode1,
            borderSide: BorderSide(
              color: ColorManger.primary,
              width: 2,
            ),
            onChanged: (value) {
              nextField(value, focusNode2, controller1);
            },
          ),
        ),
        Gap(12.w),
        Expanded(
          child: CustomTextFormFeild(
            controller: controller2,
            onChanged: (value) {
              nextField(value, focusNode3, controller2);
            },
            focusNode: focusNode2,
            keyboardType: TextInputType.number,
            fillColor: Colors.white,
            textAlign: TextAlign.center,
            borderSide: BorderSide(
              color: ColorManger.primary,
              width: 2,
            ),
          ),
        ),
        Gap(12.w),

        Expanded(
          child: CustomTextFormFeild(
            controller: controller3,
            onChanged: (value) {
              nextField(value, focusNode4, controller3);
            },
            focusNode: focusNode3,
            keyboardType: TextInputType.number,
            fillColor: Colors.white,
            textAlign: TextAlign.center,
            borderSide: BorderSide(
              color: ColorManger.primary,
              width: 2,
            ),
          ),
        ),
        Gap(12.w),

        Expanded(
          child: CustomTextFormFeild(
            controller: controller4,
            focusNode: focusNode4,
            onChanged: (value) {
              nextField(value, focusNode5, controller4);
            },
            keyboardType: TextInputType.number,
            fillColor: Colors.white,
            textAlign: TextAlign.center,
            borderSide: BorderSide(
              color: ColorManger.primary,
              width: 2,
            ),
          ),
        ),
        Gap(12.w),

        Expanded(
          child: CustomTextFormFeild(
            controller: controller5,
            onChanged: (value) {
              if (value.trim().isNotEmpty) {
                if (value.length > 1) {
                  controller5.text =
                      value[value.length - 1];
                }
                FocusScope.of(context).unfocus();
                widget.onComplete(
                  controller1.text.trim() +
                      controller2.text.trim() +
                      controller3.text.trim() +
                      controller4.text.trim() +
                      controller5.text.trim(),
                );
              }
            },
            focusNode: focusNode5,
            keyboardType: TextInputType.number,
            fillColor: Colors.white,
            textAlign: TextAlign.center,
            borderSide: BorderSide(
              color: ColorManger.primary,
              width: 2,
            ),
          ),
        ),
      ],
    );
  }
}
