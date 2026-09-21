import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/color_manger.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      titleSpacing: -14,
      leadingWidth: 53.w,
      backgroundColor: Colors.white,
      leading:  InkWell(
        onTap: (){
          if (context.canPop()) {
            context.pop();
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: ColorManger.primary,
              size: 20.sp,

            ),
          ),
        ),
      ),title: Text(text,style: TextStyle(
        fontSize: 20.sp,
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: ColorManger.primary,
        fontWeight: FontWeight.w400
    ),),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
