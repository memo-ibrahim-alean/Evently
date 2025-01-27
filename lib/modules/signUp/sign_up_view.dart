import 'package:evently/core/extensions/extensions.dart';
import 'package:evently/core/extensions/size_ext.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/routes/pages_route_name.dart';
import '../../core/theme/color_palette.dart';
import '../../core/utils/firebase-functions.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../main.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Theme.of(context)
            .appBarTheme
            .backgroundColor, // Explicitly use theme
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          Image.asset(
            AppAssets.eventlyLogo,
            height: 0.25.height,
          ),
          CustomTextField(
            controller: _nameController,
            hint: "Name",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.personIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.03, 0.01, 0.0, 0.0),
          CustomTextField(
            controller: _emailController,
            hint: "Email",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.mailIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.01, 0.01, 0.0, 0.0),
          CustomTextField(
            controller: _passwordController,
            isPassword: true,
            maxLines: 1,
            hint: "Password",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.lockIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.01, 0.01, 0.0, 0.0),
          CustomTextField(
            isPassword: true,
            maxLines: 1,
            hint: "Re Password",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.lockIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.01, 0.01, 0.0, 0.0),
          ElevatedButton(
            onPressed: () {
              FireBaseFunctions.createAccount(
                _emailController.text,
                _passwordController.text,
              );
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: ColorPalette.primaryColor,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                )),
            child: Text(
              "Register",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorPalette.white,
                  ),
            ),
          ).setOnlyPadding(context, 0.01, 0.01, 0.0, 0.0),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                  text: "Already Have Account ? ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: GestureDetector(
                    onTap: () {
                      navigatorKey.currentState!
                          .pushNamed(PagesRouteName.signIn);
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: ColorPalette.primaryColor,
                            decorationColor: ColorPalette.primaryColor,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ).setVerticalPadding(context, 0.02),
        ],
      ).setHorizontalPadding(context, 0.05),
    );
  }
}
