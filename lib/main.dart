import 'package:flutter/material.dart';
import 'package:vroz/core/configs/theme/app_theme.dart';
import 'package:vroz/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
