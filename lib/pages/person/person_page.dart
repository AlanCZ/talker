import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.remove_red_eye, color: Colors.black54,),
          actions: <Widget>[
            Container(child: Icon(Icons.shop, color: Colors.black54,), margin: EdgeInsets.only(right: 8),),
            Container(child: Icon(Icons.settings, color: Colors.black54,), margin: EdgeInsets.only(right: 8),),
          ],
          title: Text('我的', style: TextStyle(color: Colors.black54, fontSize: 18), ),
          centerTitle: true,
        ),
      ),
    );
  }
}
