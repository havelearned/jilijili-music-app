import 'package:flutter/material.dart';
import 'package:jilijili_music_app/components/login_form.dart';
import 'package:jilijili_music_app/theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // 脚手架
      body: Container( // 内容
        color: primary,
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Column(
            children: <Widget>[
              TabBar(
                  labelColor: primary,
                  unselectedLabelColor: const Color(0xFF7A869A),
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      text: "登录",
                    ),
                    Tab(
                      text: "注册",
                    )
                  ]),
              Flexible(
                flex: 1,
                child: TabBarView(
                    controller: _tabController,
                    children: const <Widget>[
                      LoginForm(),
                      Center(
                        child: Text("注册"),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
