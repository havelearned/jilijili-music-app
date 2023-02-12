import 'package:flutter/material.dart';
import 'package:jilijili_music_app/theme.dart';



class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 42, left: 35, right: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          const Text(
            "登录",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF002251),
                letterSpacing: 0),
          ),
          const SizedBox(height: 7),
          const Text(
            "欢迎登录我们的肌理音乐",
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF7A869A),
                letterSpacing: 0,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          const TextField(
            obscureText: false,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              border: OutlineInputBorder(),
              labelText: '用户名/手机号',
            ),
          ),
          const SizedBox(height: 20),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password_outlined),
              border: OutlineInputBorder(),
              labelText: '密码',
            ),
          ),
          const SizedBox(height: 20),
          const Text("忘记密码?", style: TextStyle(fontSize: 13, color: primary)),
          const SizedBox(height: 20),
          FractionallySizedBox(
            widthFactor: 1,
            child: ElevatedButton(
              onPressed: ()=>{},
              child: const Text('登录'),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget> [
              Text("没有账号?", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xFF7A869A))),
              Text("立即注册", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: primary),),
            ],
          ),

        ],
      ),
    );
  }
}
