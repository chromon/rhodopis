import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';

class FuncTextItemWidget extends StatefulWidget {

  const FuncTextItemWidget({
    @required this.title,
    this.info,
    this.desc,
    this.showDesc = false,
    this.showRightWidget = false,
    this.showSwitch = true,
    this.switchCheck = true,
    @required this.onPressed
  });

  final String title;

  // 右侧信息, showSwictch = false 时必填
  final String info;

  // 左侧描述信息
  final String desc;

  final bool showDesc;

  final bool showRightWidget;

  // 是否显示 选择按钮
  final bool showSwitch;

  // 是否选中
  final bool switchCheck;

  final VoidCallback onPressed;

  @override
  _FuncTextItemWidgetState createState() => _FuncTextItemWidgetState();
}

class _FuncTextItemWidgetState extends State<FuncTextItemWidget> {


  @override
  Widget build(BuildContext context) {

    bool check = widget.switchCheck;

    // 描述信息
    Widget descWidget = widget.showDesc
      ? Text(widget.desc, style: AppStyles.FuncDescTextStyle,)
      : Container();

    // 右侧 文本或切换按钮
    Widget switchWidget = widget.showSwitch
      ? Container(
        height: 16.0,
        child: Switch(
          value: check,
          activeColor: Color(AppColors.PrimaryColor),
          onChanged: (bool val) {
            this.setState(() {
                check = !check;
            });
          },
        ),
      )
      : Row(
        children: <Widget>[
          Text(widget.info, style: AppStyles.FuncDescTextStyle,),
          SizedBox(width: 5.0,),
          Icon(
            IconData(
              0xe60e,
              fontFamily: AppConstants.IconFontsFamily,
            ),
            size: 14.0,
            color: Color(AppColors.DescColor),
          ),
        ],
      );

    Widget rightWidget = widget.showRightWidget
      ? switchWidget
      : Container();

    // 最终结果，右侧是切换按钮时，与文本不同
    Widget result = widget.showSwitch
      ? Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            // 左边标题及描述信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.title, style: AppStyles.FuncItemTitleStyle,),
                  descWidget,
                ],
              ),
            ),
            // 右侧信息
            rightWidget,
          ],
        ),
      )
      : FlatButton(
        onPressed: widget.onPressed,
        padding: EdgeInsets.all(16.0),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            // 左边标题及描述信息
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.title, style: AppStyles.FuncItemTitleStyle,),
                  descWidget,
                ],
              ),
            ),
            // 右侧信息
            rightWidget,
          ],
        ),
      );

    return result;
  }
}