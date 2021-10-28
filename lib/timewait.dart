import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meribilty/MainProfile.dart';
import 'package:meribilty/language.dart';
import 'package:meribilty/onbounding.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Timewait extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TimewaitState();
  }
}

class TimewaitState extends State<Timewait> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 60), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainProfile()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final CountdownController _controller =
        new CountdownController(autoStart: true);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Color(0xff4CE5B1),
              image: new DecorationImage(
                  image: new AssetImage('assets/loading.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 560,
                ),
                Container(
                  child: Text(
                    AppLocalizations.of(context)!.thank,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF03DE73),
                    ),
                  ),
                ),
                Countdown(
                  controller: _controller,
                  seconds: 60,
                  build: (_, double time) => Text(
                    time.toString(),
                    style: TextStyle(fontSize: 50, color: Color(0xFF03DE73)),
                  ),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
