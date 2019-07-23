import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/constants/app_routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    // 设置顶部状态栏透明
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));

    bool _groupValue = true;

    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 120.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/icon.png',
                      width: AppConstants.WelcomeIconSize,
                      height: AppConstants.WelcomeIconSize,
                    ),
                    SizedBox(height: 20.0,),
                    Text('微信读书', style: AppStyles.WelcomeTitleStyle,),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: MaterialButton(
                          color: Color(AppColors.PrimaryColor),
                          height: 54.0,
                          child: Text('微信登录', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.Home, (Route<dynamic> route) => false);
                          },
                        ),
                      ), 
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text('或', style: AppStyles.DescTextStyle,),
                SizedBox(height: 10.0,),
                FlatButton(
                  child: Text('直接试用', style: AppStyles.LinkTextStyle,),
                  onPressed: () {},
                ),
                // SizedBox(height: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RadioListTile<bool>(
                      title: Text('已阅读并同意软件服务协议及隐私政策', style: AppStyles.DescNormalTextStyle,),
                      value: true,
                      groupValue: _groupValue,
                      onChanged: (value) {
                        setState(() {
                          _groupValue = value;
                        });
                      }
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}