import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleRules extends StatelessWidget {
  const TitleRules({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Please add all necessary characters to create safe password.',
      style: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 9.sp,
        color: Color(0xffFC1B1A),
        fontWeight: FontWeight.w600,
      ),);
  }
}
