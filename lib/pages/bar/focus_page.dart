import 'package:flutter/material.dart';
import 'package:talker/component/bar/bar_card.dart';
import 'package:talker/component/bar/bar_info.dart';
import 'package:talker/model/bar.dart';

class FocusPage extends StatefulWidget {
  @override
  _FocusPageState createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          searchBars(),
          getRecentBars(),
          getFocusBars()
        ],
      ),
    );
  }

  searchBars() {
    return Container(
      height: 30,
      child: GestureDetector(
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
              labelText: '你可能在搜：老母猪会上树...',
              labelStyle: TextStyle(
                  fontSize: 14
              ),
              contentPadding: EdgeInsets.all(0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              prefixIcon: Icon(Icons.search)

          ),
        ),
        onTap: (){
          print('go to search page...');
        },
      ),
    );
  }

  getRecentBars() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(6),
            child: Text("最近逛的吧",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          getRecentBarCards()
        ],
      ),
    );
  }

  getFocusBars() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(6),
            child: Text("关注的吧",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          getFocusBarCards()
        ],
      ),
    );
  }

  getRecentBarCards() {
    return Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          BarCardComponent(BarCard(barName: '电脑DIY', focusNum: '10w')),
          BarCardComponent(BarCard(barName: '妹子', focusNum: '22.4w')),
          BarCardComponent(BarCard(barName: '老司机', focusNum: '1.1k')),
        ],
      ),
    );
  }

  getFocusBarCards() {
    return Container(
      child: Column(
        children: <Widget>[
          BarInfoComponent(BarInfo(barName: 'PS', desc: '老娘最可爱...', level: 1)),
          BarInfoComponent(BarInfo(barName: '老干妈', desc: 'emmm...就是这个味', iconUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3314295801,1448579429&fm=26&gp=0.jpg')),
          BarInfoComponent(BarInfo(barName: '村委会联盟', desc: '是时候展示真正的技术了...', iconUrl: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=11748196,2301932614&fm=26&gp=0.jpg')),
          BarInfoComponent(BarInfo(barName: '电脑DIY', desc: '电脑死肥宅集结之地...', iconUrl: 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2544431448,2372257437&fm=26&gp=0.jpg')),
        ],
      ),
    );
  }

}
