import 'package:animooo/features/auth/presentation/widgets/create_new_password_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class CreateNewPasswordVeiw extends StatelessWidget {
  const CreateNewPasswordVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(text: 'Cancel',),
      body:CreateNewPasswordBody() ,
    );
  }
}
