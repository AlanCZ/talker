import 'package:flutter/material.dart';
import 'package:talker/component/message/message.dart';
import 'package:talker/model/message.dart';

class NotifyPage extends StatefulWidget {

  int notifyNum = 0;

  @override
  _NotifyPageState createState() => _NotifyPageState();
}

class _NotifyPageState extends State<NotifyPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return getNotifyBody();
  }

  Widget getNotifyBody() {
      if (widget.notifyNum != 0) {
        return getNotifyBG();
      } else {
        return ListView(
          children: getNotifyList(),
        );
      }
    }

  Widget getNotifyBG() {
    return Container();
  }

  List<Widget> getNotifyList() {
    int a = 0;
    List<Widget> infoList = [];
    while (a < 10) {
      infoList.add(MessageComponent(Message(icon: Icons.pets, title: '贴吧精选', content: '今日发现有一头母猪爬上了珠穆朗玛峰，并且狂叫发情了七天七夜', time: '14:16')));
      a+=1;
    }
    return infoList;
  }
}
