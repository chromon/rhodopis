import 'package:flutter/material.dart';

class PageSelectorWidget extends StatelessWidget {

  const PageSelectorWidget({this.texts});

  final List<String> texts;

  void _handleArrowButtonPress(BuildContext context, int delta) {
    final TabController controller = DefaultTabController.of(context);
    if (!controller.indexIsChanging)
      controller.animateTo((controller.index + delta).clamp(0, texts.length - 1));
  }

  @override
  Widget build(BuildContext context) {

    final TabController controller = DefaultTabController.of(context);
    final Color color = Theme.of(context).accentColor;

    return SafeArea(
      top: false,
      bottom: false,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  color: color,
                  onPressed: () { _handleArrowButtonPress(context, -1); },
                  tooltip: 'Page back',
                ),
                TabPageSelector(controller: controller),
                IconButton(
                  icon: const Icon(Icons.chevron_right),
                  color: color,
                  onPressed: () { _handleArrowButtonPress(context, 1); },
                  tooltip: 'Page forward',
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Expanded(
            child: IconTheme(
              data: IconThemeData(
                size: 128.0,
                color: color,
              ),
              child: TabBarView(
                children: texts.map<Widget>((String text) {
                  return Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      child: Center(
                        child: Text(text),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}