import 'package:flutter/material.dart';
import 'package:talker/pages/talker_page.dart';

void main() => runApp(TalkerApp());

class TalkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Talker',
      home: TalkerPage(),
    );
  }
}