import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rhodopis/pages/home/bookshelf_page.dart';
import 'package:rhodopis/widget/appbar_widget.dart';

import 'package:rhodopis/widget/navigation_item_widget.dart';
import 'package:rhodopis/constants/app_constants.dart';
import 'package:rhodopis/constants/app_colors.dart';

// 主页面
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // 当前页索引
  int _currentIndex = 1;
  // 底部导航图标 widget
  List<NavigationItemWidget> _navigationViews;
  // 用于管理滚动视图的状态
  PageController _pageController;
  // 中心页面列表
  List<Widget> _pageViews;
  // 顶部 Action bar 标题
  String actionBarTitle = '书架';
  // appbar
  AppbarWidget _appBar;

  @override
  void initState() {
    super.initState();

    // 底部导航项列表
    _navigationViews = <NavigationItemWidget>[
      NavigationItemWidget(
        activeIcon: IconData(
          0xe8a2,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        icon: IconData(
          0xe649,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        title: '发现',
      ),
      NavigationItemWidget(
        activeIcon: IconData(
          0xe602,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        icon: IconData(
          0xe612,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        title: '书架',
      ),
      NavigationItemWidget(
        activeIcon: IconData(
          0xe651,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        icon: IconData(
          0xe652,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        title: '故事',
      ),
      NavigationItemWidget(
        activeIcon: IconData(
          0xe717,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        icon: IconData(
          0xe718,
          fontFamily: AppConstants.IconFontsFamily,
        ),
        title: '我',
      ),
    ];

    // 初始化 pageController
    _pageController = PageController(initialPage: _currentIndex);
    // 初始化导航页面内容
    _pageViews = [
        Container(
          color: Colors.lightBlue,
        ),
        BookshelfPage(),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.purple,
        ),
    ];

    // 处理 appbar
    _appBar = AppbarWidget(_currentIndex);
  }

  @override
  Widget build(BuildContext context) {

    // 设置顶部状态栏透明
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));

    // 构建底部导航栏
    final BottomNavigationBar botNavBar = new BottomNavigationBar(
      fixedColor: const Color(AppColors.NavigationIconActive),
      // 遍历 _navigationViews 通过 map 遍历取出每一个 NavigationItemWidget 里的 item 对象，合并成数组返回
      items: _navigationViews.map((NavigationItemWidget navigationItemWidget) {
        return navigationItemWidget.item;
      }).toList(),
      // 当前选中的索引
      currentIndex: _currentIndex,
      // 动画效果——宽度固定不变
      type: BottomNavigationBarType.fixed,
      iconSize: 24.0,
      onTap: (int index) {
        // 重绘控件
        setState(() {
          // 修改 tab 索引值
          _currentIndex = index;
          // 点击 tab 时页面重绘
          _pageController.jumpToPage(_currentIndex);
        });
        print('点击的是第 $index 个Tab');
      },
    );

    return Scaffold(
      appBar: _appBar.appbarItem(context),
      
      // 中心页面内容
      body: PageView.builder(
        // 生成相应页面
        itemBuilder: (BuildContext context, int index) {
          return _pageViews[index];
        },
        controller: _pageController,
        // 总页数
        itemCount: _pageViews.length,
        // 页面触发回调函数
        onPageChanged: (int index) {
          setState(() {
            // 左右滑动时与底部 tab 联动
            _currentIndex = index;
            // 处理 appbar
            _appBar = AppbarWidget(index);
          });
        },
        physics: NeverScrollableScrollPhysics(),
      ),

      // 页面底部导航栏
      bottomNavigationBar: botNavBar,
    );
  }
}