import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_styles.dart';

class FuncItemWidget extends StatefulWidget {

  const FuncItemWidget({
    @required this.icon,
    @required this.color,
    @required this.title,
    @required this.info,
    this.desc,
    @required this.onPressed,
    this.showDesc = true,
  });

  final int icon;

  final int color;

  final String title;

  final String info;

  final String desc;

  final bool showDesc;

  // 列表项回调
  final VoidCallback onPressed;

  @override
  _FuncItemWidgetState createState() => _FuncItemWidgetState();
}

class _FuncItemWidgetState extends State<FuncItemWidget> {


  @override
  Widget build(BuildContext context) {

    // 描述信息
    Widget descWidget = widget.showDesc
      ? Text(widget.desc, style: AppStyles.FuncDescTextStyle,)
      : Container();

    return FlatButton(
      onPressed: widget.onPressed,
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // 图标
          Icon(
            IconData(
              widget.icon,
              fontFamily: AppConstants.IconFontsFamily,
            ),
            size: 24.0,
            color: Color(widget.color),
          ),
          SizedBox(width: 10.0,),
          // 标题
          Text(widget.title, style: AppStyles.FuncItemTitleStyle,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                // 信息
                Text(widget.info, style: AppStyles.FuncItemTitleStyle,),
                SizedBox(height: 5.0,),
                // 描述
                descWidget,
              ],
            ),
          ),
        ],
      ),
    );
  }
}