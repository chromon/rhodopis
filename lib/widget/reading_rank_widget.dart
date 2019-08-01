import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';

class ReadingRankWidget extends StatelessWidget {

  const ReadingRankWidget({
    this.title, 
    this.date,
    this.duration,
    this.ranking,
    this.words,
    this.bookCount,
    this.achieveCount,
  });

  final String title;

  final String date;

  final String duration;

  final String ranking;

  final String words;

  final String bookCount;

  final String achieveCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.title, style: AppStyles.ReadingRankTitleStyle),
          SizedBox(height: 10.0,),
          Text('读书排行 ${this.date}', style: AppStyles.ReadingRankDescStyle,),
          SizedBox(height: 20.0,),
          Text(this.duration, style: AppStyles.ReadingRankNomalStyle),
          SizedBox(height: 10.0,),
          Text('好友中排名第${this.ranking}', style: AppStyles.ReadingRankDescStyle),
          SizedBox(height: 20.0,),
          Text('${this.words} 万字', style: AppStyles.ReadingRankNomalStyle,),
          SizedBox(height:10.0),
          Text('读过${this.bookCount}本书', style: AppStyles.ReadingRankDescStyle),
          SizedBox(height: 30.0,),
          Text('本周排名第一', style: AppStyles.ReadingAchieveTitleStyle),
          SizedBox(height: 10.0,),
          Text('第${this.achieveCount}次获得此成就', style: AppStyles.ReadingAchieveDescStyle),
        ],
      ),
    );
  }
}