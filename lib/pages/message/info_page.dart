import 'package:flutter/material.dart';
import 'package:talker/component/message/message.dart';
import 'package:talker/model/message.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          getInfoTitle(),
          Expanded(
            child: ListView(
              children: getInfoList(),
            ),
          )
        ],
      ),
    );
  }

  Widget getInfoTitle() {
    return Container(
      height: 120,
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: MessageComponent(Message(icon: Icons.check_circle_outline, iconColor: Colors.redAccent, title: '我的事项')),
            onTap:(){Navigator.pushNamed(context, '');},
          ),
          GestureDetector(
            child: Container(
                child: MessageComponent(Message(icon: Icons.check_circle_outline, iconColor: Colors.orange, title: '我的事项'))
            ),
            onTap:(){Navigator.pushNamed(context, '');},
          )
        ],
      ),
    );
  }
}

List<Widget> getInfoList() {
  int a = 0;
  List<Widget> infoList = [];
  while (a < 20) {
    infoList.add(MessageComponent(Message(icon: Icons.pets, title: '贴吧精选', content: '今日发现有一头母猪爬上了珠穆朗玛峰，并且狂叫发情了七天七夜', time: '14:16')));
    a+=1;
  }
  return infoList;
}
