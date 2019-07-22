import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/widget/func_text_item_widget.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置', style: AppStyles.TitleTextStyle,),
        leading: IconButton(
          icon: Icon(
            IconData(
              0xe604,
              fontFamily: AppConstants.IconFontsFamily,
            ),
            size: 16.0,
            color: const Color(AppColors.IconNomalColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FuncTextItemWidget(
              title: '阅读时不自动锁屏',
              showRightWidget: true,
              switchCheck: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '阅读时横屏',
              showRightWidget: true,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '翻页方式',
              showRightWidget: true,
              showSwitch: false,
              info: '左右滑动',
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '阅读时隐藏热门讨论',
              showRightWidget: true,
              switchCheck: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '使用音量键翻页',
              showRightWidget: true,
              switchCheck: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '首行缩进',
              showRightWidget: true,
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FuncTextItemWidget(
              title: '关注须获得你的同意',
              desc: '开启后，获得你同意的用户才可以关注你，且你的书架和阅读动态，仅对关注你的人可见',
              showDesc: true,
              showRightWidget: true,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '接收未关注人的私信',
              showRightWidget: true,
              switchCheck: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '黑名单',
              showRightWidget: false,
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FuncTextItemWidget(
              title: '接收推送通知',
              showRightWidget: true,
              switchCheck: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '接收新关注提醒',
              showDesc: true,
              showRightWidget: true,
              switchCheck: false,
              desc: '关闭后，其他用户关注你时，将不再通知你',
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '接收微信朋友新加入提醒',
              showDesc: true,
              showRightWidget: true,
              switchCheck: true,
              desc: '关闭后，有新的微信朋友加入微信读书时，将不再通知你',
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '接收新书上架提醒',
              showDesc: true,
              showRightWidget: true,
              switchCheck: false,
              desc: '关闭后，除已订阅上架通知的书籍外，将不再收到新书上架推送通知',
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '限时免费更新提醒',
              showDesc: true,
              showRightWidget: true,
              switchCheck: true,
              desc: '开启后，将收到书城限时免费栏目的更新通知',
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FuncTextItemWidget(
              title: '清理缓存',
              showRightWidget: false,
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FuncTextItemWidget(
              title: '关于微信读书',
              showRightWidget: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '关注微信公众号',
              showRightWidget: false,
              onPressed: () {},
            ),
            FuncTextItemWidget(
              title: '帮助与反馈',
              showRightWidget: false,
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FlatButton(
              onPressed: () {},
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child:  Row(
                children: <Widget>[
                  // 左边标题及描述信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('退出登录', style: TextStyle(color: Colors.red),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}