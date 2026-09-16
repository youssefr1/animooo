import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manger.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
final String text;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 44.h),
        backgroundColor: ColorManger.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5.r,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontFamily:
          GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}
