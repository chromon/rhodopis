import 'package:flutter/material.dart';
import 'package:rhodopis/constants/app_colors.dart';

// 底部导航栏 widget
class NavigationItemWidget {

  NavigationItemWidget({
    // icon 默认图标
    IconData icon,
    // activeIcon 激活状态图标
    IconData activeIcon,
    // 导航栏文字
    String title,
  }) : item = BottomNavigationBarItem(
         icon: Icon(icon,),
         activeIcon: Icon(activeIcon, color: Color(AppColors.NavigationIconActive),),
         title: Text(title),
       );  

  final BottomNavigationBarItem item;
}
