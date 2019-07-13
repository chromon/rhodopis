import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_styles.dart';

// 搜索框
class SearchBarWidget extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(AppColors.SerchBarBgColor),
        borderRadius: new BorderRadius.circular((20.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 30,
                // maxWidth: 200
              ),
              child: TextField(
                decoration: new InputDecoration(
                  hintText: '搜索',
                  hintStyle: TextStyle(fontSize: 16.0),
                  prefixIcon: Icon(
                    IconData(
                      0xe60d,
                      fontFamily: AppConstants.IconFontsFamily,
                    ),
                    size: 18.0,
                    color: const Color(AppColors.SearchBarTextColor),
                  ),
                  contentPadding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 0, right: 0),
                  // 输入框背景颜色
                  fillColor: Color(AppColors.SerchBarBgColor),
                  filled: true,
                  // 输入框边框
                  border: InputBorder.none,
                ),
                cursorColor: Color(AppColors.PrimaryColor),
              ),
            ),
          ),
          Container(
            height: 30.0,
            child: FlatButton(
              child: Text('阅读记录', style: AppStyles.SearchBarTextStyle,),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}