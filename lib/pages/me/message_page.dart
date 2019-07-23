import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/widget/private_message_item_widget.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> with SingleTickerProviderStateMixin {

  final List<Tab> titleTabs = <Tab>[
    Tab(text: '通知',),
    Tab(text: '私信',),
  ];

  TabController tabController;
  @override
  void initState() {
    super.initState();
    // 添加监听器
    tabController = TabController(vsync: this, length: titleTabs.length)
      ..addListener(() {
        if(tabController.index.toDouble() == tabController.animation.value){
          switch (tabController.index) {
            case 0:
              print('通知 tab');
              break;
            case 1:
              print('私信 tab');
              break;
          }
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          labelColor: Color(AppColors.PrimaryColor),
          labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          unselectedLabelColor: Color(AppColors.TabUnSelectedColor),
          controller: tabController,
          isScrollable: true,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(style: BorderStyle.none)),
          tabs: titleTabs
        ),
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
        backgroundColor: Colors.white
      ),
      body: Container(
        color: Colors.white,
        child: TabBarView(
          controller: tabController,
          //TabBarView 默认支持手势滑动，若要禁止设置 NeverScrollableScrollPhysics
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Center(child:Text('view1')),
            Center(
              child: Column(
                children: <Widget>[
                  PrivateMessageItemWidget(
                    avatarPath: 'assets/images/icon.png',
                    title: '微信读书团队',
                    desc: '已有朋友访问你分享的内容，1天无限卡奖励已发放到你的账户中。',
                    date: '7月22日 18:23',
                    onPressed: () {},
                  ),
                  PrivateMessageItemWidget(
                    avatarPath: 'assets/images/icon.png',
                    title: '微信读书团队',
                    desc: '已有朋友访问你分享的内容，1天无限卡奖励已发放到你的账户中。',
                    date: '7月22日 18:23',
                    onPressed: () {},
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