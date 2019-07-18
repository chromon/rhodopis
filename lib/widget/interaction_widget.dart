import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/constants/app_styles.dart';

class InteractionWidget extends StatefulWidget {

  @override
  _InteractionWidgetState createState() => _InteractionWidgetState();
}

class _InteractionWidgetState extends State<InteractionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
              RawMaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.all(0.0),
                constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
                child: Text('Test', style: AppStyles.StoryLikeNameStyle,),
                onPressed: () {},
              ),
              SizedBox(width: 10.0,),
              Text('赞过', style: AppStyles.StoryLikedStyle,),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RawMaterialButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: const EdgeInsets.all(0.0),
                      constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
                      child: Text('删除', style: AppStyles.StoryLikeNameBlueStyle,),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10.0,),
                    Text('6月28日 18:23', style: AppStyles.StoryLikeNameStyle,),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/avatar_default.png',
                  width: 24.0,
                  height: 24.0,
                ),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('月落乌啼', style: AppStyles.StoryLikeNameStyle,),
                    Text('RGB转16进制工具具用于将RGB颜色值与十六进制字符串相互转换，工具使用简单，你只需要在以下三个输入框：红(R)、绿(G)、蓝(B)中输入RGB的颜色值及会自动回转换十六进制的字符串',
                      style: TextStyle(fontSize: 16.0),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}