import 'package:evently/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/color_palette.dart';
import '../../core/widgets/custom_text_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forget Password",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppAssets.forgetPasswordImage,
          ),
          CustomTextField(
            hint: "Email",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.mailIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.03, 0.01, 0.0, 0.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: ColorPalette.primaryColor,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                )),
            child: Text(
              "Reset Password",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: ColorPalette.white,
              ),
            ),
          ).setVerticalPadding(context, 0.025),
        ],
      ).setHorizontalPadding(context, 0.05),
    );
  }
}