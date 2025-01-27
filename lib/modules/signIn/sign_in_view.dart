import 'package:evently/core/routes/pages_route_name.dart';
import 'package:evently/core/utils/firebase-functions.dart';
import 'package:evently/main.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_assets.dart';
import '/core/extensions/extensions.dart';
import '/core/extensions/size_ext.dart';
import '/core/theme/color_palette.dart';
import '/core/widgets/custom_text_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AppAssets.eventlyLogo,
            height: 0.25.height,
          ),
          CustomTextField(
            hint: "Email",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.mailIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.03, 0.01, 0.0, 0.0),
          CustomTextField(
            isPassword: true,
            maxLines: 1,
            hint: "Password",
            hintColor: ColorPalette.generalGreyColor,
            prefixIcon: ImageIcon(
              AssetImage(AppAssets.lockIcon),
              color: ColorPalette.generalGreyColor,
            ),
          ).setOnlyPadding(context, 0.01, 0.01, 0.0, 0.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                navigatorKey.currentState!
                    .pushNamed(PagesRouteName.ForgetPassword);
              },
              child: Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      color: ColorPalette.primaryColor,
                      decorationColor: ColorPalette.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ).setVerticalPadding(context, 0.015),
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
              "Login",
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
                  text: "Don't Have Account ? ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: GestureDetector(
                    onTap: () {
                      navigatorKey.currentState!
                          .pushNamed(PagesRouteName.signUp);
                    },
                    child: Text(
                      'Create Account',
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
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: ColorPalette.primaryColor,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              Text(
                "OR",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: ColorPalette.primaryColor),
              ),
              Expanded(
                child: Divider(
                  color: ColorPalette.primaryColor,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: ColorPalette.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: BorderSide(
                      color: ColorPalette.primaryColor,
                    ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.googleIcon,
                  height: 25,
                ),
                const SizedBox(width: 10),
                Text(
                  "Login With Google",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorPalette.primaryColor,
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
