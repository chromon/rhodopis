import 'package:flutter/material.dart';
import 'package:rhodopis/widget/interaction_item_widget.dart';

class StoryPage extends StatefulWidget {
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext  context, int index) {
            return InteractionItemWidget();
          },
          itemCount: 1,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}