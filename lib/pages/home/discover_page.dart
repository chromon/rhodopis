import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/widget/search_bar_widget.dart';
import 'package:rhodopis/widget/page_selector_widget.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  static final List<String> texts = <String> ['hehe', 'xixi', 'haha'];

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
          Container(
            height: 200.0,
            child: DefaultTabController(
              length: texts.length,
              child: PageSelectorWidget(texts: texts),
            ),
          ),
        ],
      ),
    );
  }
}