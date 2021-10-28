import 'package:flutter/material.dart';
import 'package:meribilty/language.dart';
import 'package:meribilty/onbounding.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Language()));
    });
  }

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setEnabledSystemUIOverlays([]);*/
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Color(0xFF2F4D84),
              image: new DecorationImage(
                  image: new AssetImage('assets/Splash_Screens.png'),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
