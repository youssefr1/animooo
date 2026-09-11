import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/assets_value.dart';
import '../resources/color_manger.dart';
import '../resources/width_manger.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetsValue.logo,width:WidthManger.w72);
  }
}
