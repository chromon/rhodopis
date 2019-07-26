import 'package:flutter/material.dart';

import 'package:rhodopis/widget/bookshelf_item_widget.dart';
import 'package:rhodopis/widget/search_bar_widget.dart';

class BookshelfPage extends StatefulWidget {
  @override
  _BookshelfPageState createState() => _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> {

  @override
  Widget build(BuildContext context) {

    List<BookshelfItemWidget> datas = [];
    for (int i = 0; i < 5; i++) {
      datas.add(BookshelfItemWidget());
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SearchBarWidget('搜索', '阅读记录'),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: GridView.builder(
                  itemCount: datas.length,
                  // 构建一个横轴固定数量Widget
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //横轴元素个数
                    crossAxisCount: 3,
                    //纵轴间距
                    mainAxisSpacing: 0.0,
                    //横轴间距
                    crossAxisSpacing: 0.0,
                    //子组件宽高长度比例
                    childAspectRatio: 0.67
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return datas[index];
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}