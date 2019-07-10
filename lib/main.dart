import 'package:flutter/material.dart';
import 'package:rhodopis/constants/app_colors.dart';

import 'package:rhodopis/constants/app_routes.dart';
import 'package:rhodopis/pages/welcome/login_page.dart';
import 'package:rhodopis/pages/welcome/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '微信读书',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(AppColors.PrimaryColor),
      ),
      home: SplashPage(),
      routes: {
        AppRoutes.login: (context) => LoginPage(),
      },
    );
  }
}
