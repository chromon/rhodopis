import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    
    // 设置顶部状态栏透明
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 120.0),
        child: Image.asset(
          'assets/images/icon.png',
          width: AppConstants.WelcomeIconSize,
          height: AppConstants.WelcomeIconSize,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

  // 倒计时
  void countDown() {
    var _duration = Duration(seconds: 3);
    Future.delayed(_duration, () {
      Navigator.pushReplacementNamed(context, AppRoutes.Login);
    });
  }
}