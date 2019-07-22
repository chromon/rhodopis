import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_styles.dart';

class FuncIconItemWidget extends StatefulWidget {

  const FuncIconItemWidget({
    @required this.icon,
    @required this.color,
    @required this.title,
    @required this.info,
    this.desc,
    @required this.onPressed,
    this.showDesc = true,
  });

  // 图标
  final int icon;

  // 图标颜色
  final int color;

  // 标题
  final String title;

  // 主要信息
  final String info;

  // 描述信息
  final String desc;

  // 是否显示描述信息
  final bool showDesc;

  // 列表项回调
  final VoidCallback onPressed;

  @override
  _FuncIconItemWidgetState createState() => _FuncIconItemWidgetState();
}

class _FuncIconItemWidgetState extends State<FuncIconItemWidget> {


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