import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zoomfoyuee/Screens/HomeScreen.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), ()
    {
      Navigator.of(context)

          .pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 200,
        height: 200,
        child: Image.asset("assets/twitter.png",),
      ),
    );
  }
}
