import 'package:flutter/material.dart';
import 'package:talker/model/message.dart';

class MessageComponent extends StatelessWidget {

  final Message message;

  const MessageComponent(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12, width: 0.4)),
      ),
      margin: EdgeInsets.only(left: 12, right: 12),
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
          color: message.iconColor == null ? Colors.blue : message.iconColor
      ),
      child: Icon(message.icon, color: Colors.white,),
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
            Container(child: Text(message.title), margin: EdgeInsets.only(right: 190, bottom: 4)),
            Container(child: Text(message.time == null ? '' : message.time), margin: EdgeInsets.only(bottom: 4),
              alignment: Alignment.centerRight,
            ),
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
    String content = message.content;
    if (message.content == null) {
      content = '';
    }
    if (content.length > 23) {
      content = content.substring(0, 23) + '...';
    }
    return content;
  }

}