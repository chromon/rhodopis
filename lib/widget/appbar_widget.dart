import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_styles.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';

class AppbarWidget {

  AppbarWidget(this._index);

  // 导航索引
  int _index;
  // appbar
  PreferredSizeWidget _appbar;

  PreferredSizeWidget appbarItem(BuildContext context) {

    switch (_index) {
      case 0:
        // 发现页
        _appbar = AppBar(
          title: Text('发现', style: AppStyles.TitleTextStyle,),
          elevation: 0.0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          centerTitle: true,
        );
        break;
      case 1:
        // 书架页
        _appbar = AppBar(
          title: Text('书架', style: AppStyles.TitleTextStyle,),
          elevation: 0.0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(
                  0xe6be,
                  fontFamily: AppConstants.IconFontsFamily,
                ),
                color: const Color(AppColors.IconNomalColor),
              ),
              onPressed: () {
                showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            RaisedButton(
                                child: Text('确认'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                            RaisedButton(
                                child: Text('取消'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                })
                          ],
                        ),
                      ),
                    ),
                  );
                }).whenComplete(() {

                });
              },
            ),
          ],
        );
        break;
      case 2:
        // 消息页
        _appbar = AppBar(
          title: Text('消息', style: AppStyles.TitleTextStyle,),
          elevation: 0.0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(
                  0xe62c,
                  fontFamily: AppConstants.IconFontsFamily,
                ),
                // size: ,
                color: const Color(AppColors.IconNomalColor),
              ),
              onPressed: () {},
            ),
          ],
        );
        break;
      case 3:
        // 个人页面
        _appbar = AppBar(
          title: Text('测试账号', style: AppStyles.TitleTextStyle,),
          leading: IconButton(
            icon: Icon(
              IconData(
                0xe63d,
                fontFamily: AppConstants.IconFontsFamily,
              ),
              color: const Color(AppColors.IconNomalColor),
            ),
            onPressed: () {},
          ),
          elevation: 0.0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                IconData(
                  0xe644,
                  fontFamily: AppConstants.IconFontsFamily,
                ),
                // size: ,
                color: const Color(AppColors.IconNomalColor),
              ),
              onPressed: () {},
            ),
          ],
        );
        break;
    }

    return _appbar;
  }
}