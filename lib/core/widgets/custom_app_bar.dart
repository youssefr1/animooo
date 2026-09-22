import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/resources/color_manger.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  void _handlePop(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (onTap != null) {
      onTap!();
    } else if (context.canPop()) {
      context.pop();
    } else {
      Navigator.of(context).maybePop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      backgroundColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 180.w,
      leading: GestureDetector(

        onTap: () => _handlePop(context),
        child: Padding(
          padding: EdgeInsets.only(left: 12.w, top: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: ColorManger.primary,
                size: 24.sp,
              ),

              Text(
                text,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: ColorManger.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
