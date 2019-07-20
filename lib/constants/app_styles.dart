// 样式
import 'package:flutter/material.dart';
import 'package:rhodopis/constants/app_colors.dart';

class AppStyles {

  // 欢迎页标题样式
  static const WelcomeTitleStyle = TextStyle(
    fontSize: 36.0,
    color: Colors.black,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.normal
  );

  // 描述信息样式
  static const DescTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(AppColors.DescColor),
    decoration: TextDecoration.none,
    fontWeight: FontWeight.normal
  );

  // 描述(小)信息样式
  static const DescNormalTextStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColors.DescColor),
    decoration: TextDecoration.none,
    fontWeight: FontWeight.normal
  );

  // 链接样式
  static const LinkTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(AppColors.PrimaryColor)
  );

  // 主页 appbar 标题样式
  static const TitleTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color(AppColors.TitleTextColor),
    fontWeight: FontWeight.bold,
  );

  // 主页 appbar actions 字体样式
  static const ActionsTitleTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color(AppColors.ActionsTitleTextColor),
    fontWeight: FontWeight.bold,
  );

  // 搜索框字体样式
  static const SearchBarTextStyle = TextStyle(
    fontSize: 16.0,
    color: Color(AppColors.SearchBarTextColor),
  );

  // 故事页点赞用户名字体样式
  static const StoryLikeNameStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColors.StoryLikeTitleColor),
  );

  // 故事页点赞标题 赞过字体样式
  static const StoryLikedStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColors.StoryLikeColor),
  );

  static const StoryLikeNameBlueStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColors.StoryLikeTitleBlueColor),
  );

  // 引用内容字体样式
  static const QuoteContentStyle = TextStyle(
    fontSize: 16.0,
    color: Color(AppColors.StoryLikeTitleColor)
  );

  // 点赞红心字体样式
  static const LikeHeartTextStyle = TextStyle(
    fontSize: 16.0, 
    color: Color(AppColors.LikeHeartColor)
  );

  // me page 描述信息字体样式
  static const FuncDescTextStyle = TextStyle(
    fontSize: 14.0,
    color: Color(AppColors.DescColor),
  );
}