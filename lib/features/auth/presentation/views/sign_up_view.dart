import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/sign up/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignUpBody(),
      ),
    );
  }
}
