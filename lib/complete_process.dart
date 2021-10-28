import 'package:flutter/material.dart';
import 'package:meribilty/MyDeliveries.dart';

import 'package:meribilty/onbounding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'mydeliver.dart';

class CompleteProcess extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CompleteProcessState();
  }
}

class CompleteProcessState extends State<CompleteProcess> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 30), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyDeliver()));
    });
  }

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setEnabledSystemUIOverlays([]);*/
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Darwe()),
                      // );
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/menu.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.deliver,
                              style: TextStyle(
                                color: Color(0xFF2F4D84),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                AppLocalizations.of(context)!.estim,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF2F4D84),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Rs 120,000 - 130,000",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                AppLocalizations.of(context)!.base,
                style: TextStyle(color: Color(0xff8A8A8F)),
              ),
              Container(child: Image.asset("assets/load.PNG")),
              Container(
                child: Text(
                  AppLocalizations.of(context)!.wait,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF2F4D84),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.bare,
                style: TextStyle(
                  color: Color(0xff8A8A8F),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
