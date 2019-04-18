import 'package:flutter/material.dart';

class BarCard {

  final String bgTopicUrl;
  final String iconUrl;
  final String barName;
  final String focusNum;

  const BarCard({
    @required this.barName,
    @required this.focusNum,
    this.bgTopicUrl = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555488071420&di=e6fd23fc77a78a678bf224f5a6da049a&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2Fqk%2Fback_origin_pic%2F00%2F02%2F28%2F7adb7f4e8f5a6aa62c9f3c4ddd950bc6.png',
    this.iconUrl = "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=350479878,4015742982&fm=26&gp=0.jpg"
  });

}

class BarInfo {

  final String iconUrl;
  final String barName;
  final int level;
  final String desc;

  const BarInfo({
    @required this.barName,
    this.iconUrl = 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=714212938,1740690402&fm=26&gp=0.jpg',
    this.level = 1,
    this.desc = ''
  });

}