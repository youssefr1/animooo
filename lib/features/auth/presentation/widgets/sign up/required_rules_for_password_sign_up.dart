import 'package:animooo/core/resources/consts_lists_mahnger.dart';
import 'package:animooo/features/auth/presentation/widgets/sign%20up/title_rules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RequiredRulesForPasswordSignUp
    extends StatelessWidget {
  const RequiredRulesForPasswordSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       if(ConstsListsManger.passwordRequirements.any((element) => element['valid'] == false)) TitleRules(),
        SizedBox(height: 11.h),
        SizedBox(
          height: 80.h,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final isValid = ConstsListsManger.passwordRequirements[index]['valid'];
              return RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: Icon(
                        Icons.circle,
                        size: 5.sp,
                        color: isValid == true
                            ? Colors.green
                            : const Color(0xffFC1B1A),
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 3.w),
                    ),
                    TextSpan(
                      text: ConstsListsManger
                          .passwordRequirements[index]['title'],
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 8.sp,
                        color: isValid == true
                            ? Colors.green
                            : const Color(0xffFC1B1A),
                        fontWeight: FontWeight.w600,
                        decoration: isValid == true
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 5.h);
            },
            itemCount:
                ConstsListsManger.passwordRequirements.length,
          ),
        ),

      ],
    );
  }
}
