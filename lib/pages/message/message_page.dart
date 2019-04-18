import 'package:flutter/material.dart';
import 'package:talker/pages/message/info_page.dart';
import 'package:talker/pages/message/notify_page.dart';
import 'package:talker/res/index.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: _allPages.length,
        child: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                centerTitle: true,
                title: new MessageTabLayout(),
                backgroundColor: Colors.white,
                elevation: 0,

              ),
              preferredSize: Size.fromHeight(45)
          ),
          body: new MessageTabBarViewLayout(),
        )
    );
  }
}

class _Page {
  final String labelId;
  _Page(this.labelId);
}

List<_Page> _allPages = [
  new _Page(MessageIds.tab_info),
  new _Page(MessageIds.tab_notify)
];

class MessageTabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TabBar(
      isScrollable: true,
      labelPadding: EdgeInsets.all(12.0),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.black,
      tabs: _allPages.map((_Page page) =>
        new Tab(child: new Text(MessageIds.tabMaps[page.labelId],
          style: TextStyle(
            color: Colors.black54,
            fontSize: 16
          ),
        ),)
      ).toList(),
    );
  }
}

class MessageTabBarViewLayout extends StatelessWidget {
  Widget buildTabView(BuildContext context, _Page page) {
    String labelId = page.labelId;
    switch (labelId) {
      case MessageIds.tab_info:
        return InfoPage();
        break;
      case MessageIds.tab_notify:
        return NotifyPage();
        break;
      default:
        return Container();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new TabBarView(
      children: _allPages.map((_Page page) {
        return buildTabView(context, page);
      }).toList()
    );
  }
}
