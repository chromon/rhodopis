import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 150.0),
        child: Image.asset(
          'assets/images/icon.png',
          width: 100.0,
          height: 100.0,
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
      // Navigator.pushReplacementNamed(context, Routes.Welcome);
    });
  }
}