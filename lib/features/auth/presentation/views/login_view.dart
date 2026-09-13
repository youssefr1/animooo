import 'package:animooo/core/resources/color_manger.dart';
import 'package:animooo/features/auth/presentation/widgets/login/login_view_body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/routes/routes.dart';
import '../widgets/login/botton_nav_bar_login.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LoginViewBody(),
        bottomNavigationBar: BottomNavBarLogin(onPressedAtSignUpNow: () {
          context.go(AppRouter.signup);
        },),
      ),
    );
  }
}

