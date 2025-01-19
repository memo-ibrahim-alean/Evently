import 'package:evently/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

/// 1- Localization (en, ar)
/// 2- Theme (light, dark)
/// 3- State management (provider) [observer design pattern, singleton design pattern]
///
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
