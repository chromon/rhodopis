import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/widget/search_bar_widget.dart';
import 'package:rhodopis/widget/page_selector_widget.dart';
import 'package:rhodopis/widget/reading_rank_widget.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  static final List<Widget> widgets = <Widget> [
    ReadingRankWidget(
      title: '测试账号',
      date: '7.22 - 7.28',
      duration: '21小时38分',
      ranking: '1',
      words: '28.8', 
      bookCount: '38',
      achieveCount: '89',
    ),
    Text('hehe'), 
    Text('xixi'), 
    Text('haha')
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(AppColors.DiscoverBgColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25.0),
            child: SearchBarWidget('挪威的森林', '书城'),
          ),
          Expanded(
            child: Container(
              // margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              // height: 200.0,
              child:DefaultTabController(
                length: widgets.length,
                child: PageSelectorWidget(widgets: widgets),
              ), 
            ),
          ),
        ],
      ),
    );
  }
}