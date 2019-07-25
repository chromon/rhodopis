import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/widget/interaction_item_widget.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> with SingleTickerProviderStateMixin {

  final List<Tab> titleTabs = <Tab>[
    Tab(text: '故事',),
    Tab(text: '朋友',),
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
              print('故事 tab');
              break;
            case 1:
              print('朋友 tab');
              break;
          }
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Container(
    //     child: ListView.builder(
    //       itemBuilder: (BuildContext  context, int index) {
    //         return InteractionItemWidget();
    //       },
    //       itemCount: 1,
    //       physics: NeverScrollableScrollPhysics(),
    //     ),
    //   ),
    // );
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
        automaticallyImplyLeading: false,
        elevation: 0.0,
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white
      ),
      body: Container(
        color: Colors.white,
        child: TabBarView(
          controller: tabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Center(
              child: Text('tab 1'),
            ),
            Center(
              child: ListView.builder(
                itemBuilder: (BuildContext  context, int index) {
                  return InteractionItemWidget();
                },
                itemCount: 1,
                physics: NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}