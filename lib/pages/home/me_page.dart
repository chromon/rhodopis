import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          // 头像栏
          Container(
            padding: EdgeInsets.only(top: 30.0),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/avatar_default.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Text('编辑个人资料', style: AppStyles.FuncDescTextStyle,),
                      SizedBox(height: 20.0,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 功能栏
        ],
      ),
    );
  }
}