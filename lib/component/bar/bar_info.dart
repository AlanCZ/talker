import 'package:flutter/material.dart';
import 'package:talker/model/bar.dart';

class BarInfoComponent extends StatelessWidget {

  final BarInfo barInfo;

  const BarInfoComponent(this.barInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12, width: 0.4)),
      ),
      child: Row(
        children: <Widget>[
          getIcon(),
          getMessageContent()
        ],
      ),
    );
  }

  getIcon() {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(barInfo.iconUrl), fit: BoxFit.cover),
      ),
    );
  }

  getMessageContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(child: Text(barInfo.barName), margin: EdgeInsets.only(bottom: 2),),
            Container(
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Icon(Icons.favorite, color: Colors.orangeAccent, size: 18,),
                  Container(child: Text(barInfo.level.toString(), style: TextStyle(fontSize: 12, color: Colors.white),),margin: EdgeInsets.only(left: 5.5, top: 2),)
                ],
              ),
              margin: EdgeInsets.only(bottom: 2)
            )
          ],
        ),
        Text(getContent(),
          style: TextStyle(
              fontSize: 12,
              color: Colors.black38
          ),
        ),
      ],
    );
  }


  getContent() {
    String content = barInfo.desc;
    if (barInfo.desc == null) {
      content = '';
    }
    if (content.length > 23) {
      content = content.substring(0, 23) + '...';
    }
    return content;
  }

}
