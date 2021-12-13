import 'package:flutter/material.dart';

import 'Screens/SpashScreen.dart';


main ()=>runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "twitter",
      home: SplashScreen(),
    );
  }
}
