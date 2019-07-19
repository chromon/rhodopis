import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/constants/app_styles.dart';

class InteractionItemWidget extends StatefulWidget {

  @override
  _InteractionItemWidgetState createState() => _InteractionItemWidgetState();
}

class _InteractionItemWidgetState extends State<InteractionItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // 点赞标题
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
              // 点赞用户
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
          // 划线评论头像，用户名
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
                    // 评论详细信息
                    Container(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text('RGB转16进制工具具用于将RGB颜色值与十六进制字符串相互转换，工具使用简单，你只需要在以下三个输入框：红(R)、绿(G)、蓝(B)中输入RGB的颜色值及会自动回转换十六进制的字符串',
                        style: TextStyle(fontSize: 18.0),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis
                      ),
                    ),
                    // 引用内容
                    Container(
                      color: Color(AppColors.QuoteBgColor),
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(AppColors.StoryLikeColor),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            // 引用详细内容
                            child: Text('RGB转16进制工具具用于将RGB颜色值与十六进制字符串相互转换，工具使用简单，',
                              style: AppStyles.QuoteContentStyle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          // 引用书籍详细信息
                          Container(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Row(
                              children: <Widget>[
                                Image(
                                  image: NetworkImage('https://bookcover.yuewen.com/qdbimg/349573/3602691/180.jpg'),
                                  fit: BoxFit.cover,
                                  width: 50.0,
                                  height: 50.0 / 0.75,
                                ),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // 书籍名称，作者
                                      Text('修真聊天群', style: TextStyle(fontSize: 18.0),),
                                      SizedBox(height: 10.0,),
                                      Text('骑士'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 回复，评论，点赞图标
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            IconData(
                              0xe61f,
                              fontFamily: AppConstants.IconFontsFamily,
                            ),
                            size: 18.0,
                            color: const Color(AppColors.StoryLikeTitleColor),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  IconData(
                                    // 0xe6ff,
                                    0xe6fe,
                                    fontFamily: AppConstants.IconFontsFamily,
                                  ),
                                  size: 18.0,
                                  // color: const Color(AppColors.StoryLikeTitleColor),
                                  color: const Color(AppColors.LikeHeartColor),
                                ),
                                SizedBox(width: 6.0,),
                                Text('8', style: AppStyles.LikeHeartTextStyle,)
                              ],
                            ),
                          ),
                          Icon(
                            IconData(
                              0xe701,
                              fontFamily: AppConstants.IconFontsFamily,
                            ),
                            size: 18.0,
                            color: const Color(AppColors.StoryLikeTitleColor),
                          ),
                          SizedBox(width: 6.0,),
                          Text('5', style: TextStyle(fontSize: 20.0, color: Color(AppColors.StoryLikeTitleColor)),),
                        ],
                      ),
                    ),
                    Container(
                      color: Color(AppColors.QuoteBgColor),
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          // 点赞用户头像图标
                          Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(AppColors.StoryLikeColor),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/avatar_default.png',
                                    width: 24.0,
                                    height: 24.0,
                                  ),
                                ),
                                SizedBox(width: 10.0,),
                                Text('等8人赞过', style: AppStyles.StoryLikedStyle,),
                              ],
                            ),
                          ),
                          // 评论内容
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('大师兄', style: AppStyles.StoryLikeNameBlueStyle,),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: Text('RGB转16进制工具RGB转16进制工具', style: AppStyles.StoryLikeNameStyle, maxLines: 2, overflow: TextOverflow.ellipsis,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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