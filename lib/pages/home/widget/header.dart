import 'package:flutter/material.dart';

import 'category_card.dart';
import 'notification_area.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: <Widget>[
        NotificationArea(),
        CategoryCard(title: "嘻哈",description: "1.5万播放量",image: "/sdfas",onPress: ()=>{},)
      ],
    );
  }
}
