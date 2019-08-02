import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';

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
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
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
                SizedBox(height: 20.0,),
                Text('本周排名第一', style: AppStyles.ReadingAchieveTitleStyle),
                SizedBox(height: 10.0,),
                Text('第${this.achieveCount}次获得此成就', style: AppStyles.ReadingAchieveDescStyle),
              ],
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('查看微信读书排行榜', style: AppStyles.ReadingRankDescStyle),
                    Icon(
                      IconData(
                        0xe60e,
                        fontFamily: AppConstants.IconFontsFamily,
                      ),
                      size: 12.0,
                      color: Color(AppColors.DescColor),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        IconData(
                          0xe60b,
                          fontFamily: AppConstants.IconFontsFamily,
                        ),
                        size: 30.0,
                        color: Color(AppColors.DescColor),
                      ),
                      Icon(
                        IconData(
                          0xe63c,
                          fontFamily: AppConstants.IconFontsFamily,
                        ),
                        size: 30.0,
                        color: Color(AppColors.DescColor),
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}