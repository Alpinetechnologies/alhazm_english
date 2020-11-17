import 'dart:async';
import 'package:alhazm/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthWidget(myLogin: null),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.height - 100,
          child: Image.asset(
            'assets/images/logo-name.png',
            height: 133,
            width: 93,
          ),
        ),
      ),
    );
  }
}
