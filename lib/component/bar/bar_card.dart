import 'package:flutter/material.dart';
import 'package:talker/model/bar.dart';

class BarCardComponent extends StatelessWidget {

  final BarCard barCard;

  const BarCardComponent(this.barCard);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 95,
        margin: EdgeInsets.all(5),
        child: Stack(
          children: <Widget>[
            getBarCardBG(),
            getFloatIcon()
          ],
        ),
    );
  }

  getBarCardBG() {
    return Column(
      children: <Widget>[
        Container(
          height: 55,
          width: 95,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(barCard.bgTopicUrl),
              fit: BoxFit.fitHeight,
            ),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.black12,
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: Offset(0.3, 1.0),
              ),
            ],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))
          )
        ),
        Container(
          height: 65,
          width: 95,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.black12,
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: Offset(0.3, 1.0),
              ),
            ],
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2), bottomRight: Radius.circular(2))
          ),
          padding: EdgeInsets.only(top: 22),
          child: Column(
            children: <Widget>[
              Text(barCard.barName),
              Text("关注数: " + barCard.focusNum,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  getFloatIcon() {
    return Container(
      height: 35,
      width: 35,
      margin: EdgeInsets.only(top: 37.5, left: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(image: NetworkImage(barCard.iconUrl))
      ),
    );
  }
}
