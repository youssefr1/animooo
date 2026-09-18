import 'package:animooo/features/auth/presentation/widgets/otp/otp_verification_body_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpVerificationBodyView(),
      appBar: CustomAppBar(text: 'Cancel',),
    );
  }
}
