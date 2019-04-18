import 'package:flutter/material.dart';
import 'package:talker/pages/index.dart';
import 'package:talker/res/index.dart';

class TalkerPage extends StatefulWidget {
  @override
  _TalkerPageState createState() => _TalkerPageState();
}

class _TalkerPageState extends State<TalkerPage> {

  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: _allTabs.length,
        child: Scaffold(
          body: tabPages[_tabIndex],
          bottomNavigationBar: getTabLayout(),
        )
    );
  }

  Widget getTabLayout() {
    return new BottomNavigationBar(
      items: getAllTabs(),
      type: BottomNavigationBarType.fixed,
      currentIndex: _tabIndex,
      //tabBottom的点击监听
      onTap: (index) {
        setState(() {
          _tabIndex = index;
          print(_tabIndex);
        });
      },
    );
  }

}

class _Page extends StatelessWidget {
  String labelId;

  _Page(this.labelId);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(labelId),
    );
  }
}


List<_Page> _allTabs = [
  new _Page(Ids.tab_homePage),
  new _Page(Ids.tab_bars),
  new _Page(Ids.tab_message),
  new _Page(Ids.tab_person),
];

List<Widget> tabPages = [
  HomePage(),
  BarPage(),
  MessagePage(),
  PersonPage(),
];

List<BottomNavigationBarItem> getAllTabs() {
  return _allTabs.map((_Page page) =>
    new BottomNavigationBarItem(
      title: Text(Ids.tabMaps[page.labelId]['name'],
        style: TextStyle(color: Colors.black54),
      ),
      icon: Icon(Icons.star, color: Colors.black45,),
    )
  ).toList();
}
