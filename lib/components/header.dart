

import 'package:flutter/material.dart';

import '../theme.dart';

class Header extends StatelessWidget{
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.sizeOf(context);
    return Stack(
      children: <Widget>[
        Container(
            width: size.width,
            height: 240,
            decoration: const BoxDecoration(
                color: primary,
                borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(100))),
            child: Container(
              width: size.width,
              height: 80,
              padding: const EdgeInsets.all(44),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        '晚上好',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5), fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'amani',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.doorbell_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      const SizedBox(width: 20,),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image(
                            width: size.width,
                            height: 240,
                            // ignore: prefer_const_constructors
                            image: AssetImage("lib/assets/images/player.png"),
                          )
                      ),
                    ],
                  )
                ],
              ),
            )),
        Positioned(
            left: 0,
            top: 0,
            child: Image(
              width: size.width,
              height: 240,
              // ignore: prefer_const_constructors
              image: AssetImage("lib/assets/images/bg.png"),
            ))
      ],
    );

  }

}