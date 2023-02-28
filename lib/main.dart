import 'package:flutter/material.dart';
import 'package:jilijili_music_app/pages/home/home_page.dart';
import 'package:jilijili_music_app/pages/login/login_page.dart';
import 'package:jilijili_music_app/theme.dart';

void main() {
  runApp(const JilijiliMusic());
}

/*首页*/
class JilijiliMusic extends StatelessWidget {
  const JilijiliMusic({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '肌理音乐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primary,
      ),
      initialRoute: '/', // 初始路由
      routes: {
        '/': (context) => const HomePage(), // 配置页面
        "/login": (context) => const LoginPage()
      },
    );
  }
}
