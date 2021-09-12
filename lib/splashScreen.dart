import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 20),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: FractionallySizedBox(
              heightFactor: 1.0,
              widthFactor: 1.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover),
                ),
                child: Center(child: FlutterLogo(size: 250)),
              )),
        ),
      ],
    );
  }
}
