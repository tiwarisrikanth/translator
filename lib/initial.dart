import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trans/constants/color_const.dart';
import 'package:trans/home.dart';

class InitialColor extends StatefulWidget {
  const InitialColor({super.key});

  @override
  State<InitialColor> createState() => _InitialColorState();
}

class _InitialColorState extends State<InitialColor> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () async {
      await Navigator.pushNamed(context, '/home');

      // await Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => TransHome(),
      //     ),
      //     (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: forthColor,
            child: Center(
                child: Image.asset(
              'assets/log.png',
              width: 440,
            )),
          ),
        ],
      ),
    );
  }
}
