import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.purple.shade400,
          Colors.pink.shade600,
        ],
      )),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 250,
              height: 250,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.yellow,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        "assets/Logo.png",
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
