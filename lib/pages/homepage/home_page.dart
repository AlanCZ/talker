import 'package:flutter/material.dart';
import 'package:talker/pages/bar/focus_page.dart';
import 'package:talker/pages/bar/recommend_page.dart';
import 'package:talker/res/index.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: _allPages.length,
        child: Scaffold(
          appBar: PreferredSize(
              child: AppBar(
                title: new HomeTabLayout(),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              preferredSize: Size.fromHeight(45)
          ),
          body: new HomeTabBarViewLayout(),
        )
    );
  }
}

class _Page {
  final String labelId;
  _Page(this.labelId);
}

List<_Page> _allPages = [
  new _Page(HomeIds.tab_home),
  new _Page(HomeIds.tab_topic),
];

class HomeTabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new TabBar(
      isScrollable: true,
      labelPadding: EdgeInsets.all(12.0),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.orange,
      indicatorWeight: 4,
      labelColor: Colors.black87,
      labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      unselectedLabelColor: Colors.black38,
      unselectedLabelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
      tabs: _allPages.map((_Page page) =>
        new Tab(text: HomeIds.tabMaps[page.labelId],)
      ).toList(),
    );
  }
}

class HomeTabBarViewLayout extends StatelessWidget {
  Widget buildTabView(BuildContext context, _Page page) {
    String labelId = page.labelId;
    switch (labelId) {
      case HomeIds.tab_home:
        return FocusPage();
        break;
      case HomeIds.tab_topic:
        return RecommendPage();
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
