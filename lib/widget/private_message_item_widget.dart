import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';

class PrivateMessageItemWidget extends StatefulWidget {

  const PrivateMessageItemWidget({
    this.avatarPath,
    this.title,
    this.desc,
    this.date,
    this.onPressed,
  });

  final String avatarPath;

  final String title;

  final String desc;

  final String date;

  final VoidCallback onPressed;

  @override
  _PrivateMessageItemWidgetState createState() => _PrivateMessageItemWidgetState();
}

class _PrivateMessageItemWidgetState extends State<PrivateMessageItemWidget> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onPressed,
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // 图标
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              widget.avatarPath,
              width: 50.0,
              height: 50.0,
            ),
          ),
          SizedBox(width: 10.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                // 标题时间
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // 标题
                    Text(widget.title, style: AppStyles.FuncItemTitleStyle,),
                    Text(widget.date, style: AppStyles.FuncDescTextStyle,),
                  ],
                ),
                SizedBox(height: 5.0,),
                // 描述
                Text(widget.desc, style: AppStyles.FuncDescTextStyle, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }
}