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
        TitleRules(),
        SizedBox(height: 11.h),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
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
                      color: Color(0xffFC1B1A),
                    ),
                  ),
                  WidgetSpan(child: SizedBox(width: 3.w)),
                  TextSpan(
                    text: ConstsListsManger
                        .passwordRequirements[index],
                    style: TextStyle(
                      fontFamily:
                          GoogleFonts.poppins().fontFamily,
                      fontSize: 8.sp,
                      color: Color(0xffFC1B1A),
                      fontWeight: FontWeight.w600,
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
        Gap(16.h),
      ],
    );
  }
}
