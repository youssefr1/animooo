import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';

class CustomSelectYourImageWidget extends StatelessWidget {
  const CustomSelectYourImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
          radius: Radius.circular(10.r),
          dashPattern: [2,2],
          strokeWidth: 2,
          color: ColorManger.primary
      ),
      child: SizedBox(
        height: 200.h,
        width: 339.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.image,color: ColorManger.primary,size: 30.sp,),
            Gap(16.h),
            Text(
              'Select file',
              style: TextStyle(
                fontFamily:
                GoogleFonts.urbanist().fontFamily,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
