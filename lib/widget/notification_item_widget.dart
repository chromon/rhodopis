import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';

class NotificationItemWidget extends StatefulWidget {

  const NotificationItemWidget({
    this.avatarPath,
    this.name,
    this.info,
    this.date,
    this.content,
    this.onPressed,
  });

  final String avatarPath;

  final String name;

  final String info;

  final String date;

  final String content;

  final VoidCallback onPressed;

  @override
  _NotificationItemWidgetState createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onPressed,
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(widget.name, style: AppStyles.NotificationTitleStyle,),
                      Text(widget.date, style: AppStyles.FuncDescTextStyle,),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      Icon(
                        IconData(
                          0xe6fe,
                          fontFamily: AppConstants.IconFontsFamily,
                        ),
                        size: 14.0,
                        color: const Color(AppColors.StoryLikeTitleColor),
                      ),
                      SizedBox(width: 10.0,),
                      Text(widget.info),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Text(widget.content, style: AppStyles.FuncDescTextStyle, maxLines: 1, overflow: TextOverflow.ellipsis)
                ],
              ),
            ),
            
          ),
        ]
      ),
    );
  }
}