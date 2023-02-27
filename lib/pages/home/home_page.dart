import 'package:flutter/material.dart';
import 'package:jilijili_music_app/pages/home/widget/header.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
        ],
      )
    );
  }
}
