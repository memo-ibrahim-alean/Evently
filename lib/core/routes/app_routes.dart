import 'package:evently/core/routes/pages_route_name.dart';
import 'package:evently/modules/create_event/create_event_screen.dart';
import 'package:evently/modules/forgetPassword/forget_password_view.dart';
import 'package:evently/modules/onBoarding/on_boarding_view.dart';
import 'package:evently/modules/signIn/sign_in_view.dart';
import 'package:evently/modules/signUp/sign_up_view.dart';
import 'package:evently/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';

import '../../modules/layout/layout_view.dart';

abstract class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );

      case PagesRouteName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => OnBoardingView(),
          settings: settings,
        );

      case PagesRouteName.signIn:
        return MaterialPageRoute(
          builder: (context) => SignInView(),
          settings: settings,
        );

      case PagesRouteName.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUpView(),
          settings: settings,
        );
      case PagesRouteName.ForgetPassword:
        return MaterialPageRoute(
          builder: (context) => ForgetPasswordView(),
          settings: settings,
        );

      case PagesRouteName.layout:
        {
          return MaterialPageRoute(
            builder: (context) => const LayoutView(),
            settings: settings,
          );
        }
      case PagesRouteName.createEventView:
        {
          return MaterialPageRoute(
            builder: (context) => const CreateEventScreen(),
            settings: settings,
          );
        }

      // if user write other route
      default:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
          settings: settings,
        );
    }
  }
}
