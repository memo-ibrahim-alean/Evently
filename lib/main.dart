import 'package:bot_toast/bot_toast.dart';
import 'package:evently/core/routes/app_routes.dart';
import 'package:evently/core/services/loading_service.dart';
import 'package:evently/core/theme/app_theme_manger.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'firebase_options.dart';

/// 1- Localization (en, ar)
/// 2- Theme (light, dark)
/// 3- State management (provider) [observer design pattern, singleton design pattern]

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppThemeManager.lightTheme,
      navigatorKey: navigatorKey,
      builder: EasyLoading.init(
        builder: BotToastInit(),
      ),
    );
  }
}
