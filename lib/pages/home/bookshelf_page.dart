import 'package:flutter/material.dart';
import 'package:rhodopis/widget/search_bar_widget.dart';

class BookshelfPage extends StatefulWidget {
  @override
  _BookshelfPageState createState() => _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SearchBarWidget(),
          Expanded(
            child: Container(
              color: Colors.lightBlue,
              child: Text('hxixiixixix'),
            ),
          ),
        ],
      ),
    );
  }
}