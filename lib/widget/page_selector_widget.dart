import 'package:flutter/material.dart';

import 'package:rhodopis/constants/app_colors.dart';
import 'package:rhodopis/constants/app_constants.dart';

class PageSelectorWidget extends StatelessWidget {

  const PageSelectorWidget({this.widgets});

  final List<Widget> widgets;

  void _handleArrowButtonPress(BuildContext context, int delta) {
    final TabController controller = DefaultTabController.of(context);
    if (!controller.indexIsChanging)
      controller.animateTo((controller.index + delta).clamp(0, widgets.length - 1));
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                TabBarView(
                  children: widgets.map<Widget>((Widget widget) {
                    return Container(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                        elevation: 0.0,
                        child: widget,
                        // Center(
                        //   child: 
                        // ),
                      ),
                    );
                  }).toList(),
                ),
                Positioned(
                  right: 5.0,
                  bottom: 18.0,
                  child: FlatButton(
                    padding: EdgeInsets.all(22.0),
                    onPressed: () {_handleArrowButtonPress(context, 1);},
                    child: Icon(
                      IconData(
                        0xe60e,
                        fontFamily: AppConstants.IconFontsFamily,
                      ),
                      size: 14.0,
                      color: Color(AppColors.DescColor),
                    ),
                    color: Color(AppColors.FloatingBtnColor),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(AppColors.FloatingBtnColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}