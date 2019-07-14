import 'package:flutter/material.dart';
import 'dart:ui' as ui show window;

class BookshelfItemWidget extends StatelessWidget {

  static double screenWidth = MediaQueryData.fromWindow(ui.window).size.width;
  final double width = (screenWidth - 15 * 2 - 24 * 2 - 20) / 3;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {},
      child: Container(
        // color: Colors.lightBlue,
        alignment: Alignment.center,
        width: this.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              child: Container(
                child: Image(
                  image: NetworkImage('https://bookcover.yuewen.com/qdbimg/349573/3602691/180.jpg'),
                  fit: BoxFit.cover,
                  width: this.width,
                  height: this.width / 0.75,
                ),
                decoration: BoxDecoration(border: Border.all(color: Color(0xFFF5F5F5))),
              ),
              decoration: BoxDecoration(boxShadow: [BoxShadow(color: Color(0x22000000), blurRadius: 5)]),
            ),
            SizedBox(height: 10),
            Container(
              width: this.width,
              child: Text('修真聊天群群群群', style: TextStyle(fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            // SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}