import 'package:flutter/material.dart';
import 'package:rhodopis/constants/app_colors.dart';

import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/widget/func_item_widget.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            // 头像栏
            Container(
              padding: EdgeInsets.only(top: 30.0),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/avatar_default.png',
                            width: 80.0,
                            height: 80.0,
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Text('编辑个人资料', style: AppStyles.FuncDescTextStyle,),
                        SizedBox(height: 20.0,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            // 功能栏
            FuncItemWidget(
              icon: 0xe6dc,
              color: AppColors.AccountIconColor,
              title: '账户',
              info: '786.52元',
              desc: '已购1766本书',
              onPressed: () {},
            ),
            FuncItemWidget(
              icon: 0xe72d,
              color: AppColors.InfiniteCardIconColor,
              title: '无限卡',
              info: '还剩78天',
              desc: '已累计为你节省68.15元',
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FuncItemWidget(
              icon: 0xe6c8,
              color: AppColors.RandingIconColor,
              title: '排行榜',
              info: '第1名',
              desc: '17小时28分钟',
              onPressed: () {},
            ),
            FuncItemWidget(
              icon: 0xe600,
              color: AppColors.FollowIconColor,
              title: '关注',
              info: '1人关注我',
              desc: '已关注1人',
              onPressed: () {},
            ),
            SizedBox(height: 10.0,),
            FuncItemWidget(
              icon: 0xe69b,
              color: AppColors.NoteIconColor,
              title: '笔记',
              info: '4本',
              desc: '20个赞 8个评论',
              onPressed: () {},
            ),
            FuncItemWidget(
              icon: 0xe62a,
              color: AppColors.BookListIconColor,
              title: '书单',
              info: '1个',
              showDesc: false,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}