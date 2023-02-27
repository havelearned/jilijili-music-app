import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.onPress})
      : super(key: key);

  final String title, description, image;

  // final Function onPress; // 传递一个函数,必须返回一个值
  final VoidCallback onPress; // 没有返回值

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 140,
      height: 220,
      child: Stack(
        children: <Widget>[
          Image.asset("assets/images/banner.png"),
          Image.asset("assets/images/banner.png"),
          Image.asset("assets/images/banner.png"),
          Image.asset("assets/images/banner.png"),
          Image.asset("assets/images/banner.png"),
        ],
      ),
    );
  }
}
