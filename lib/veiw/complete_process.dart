// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'mydeliverport.dart';

class  CompleteProcess extends StatefulWidget {
  const CompleteProcess({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CompleteProcessState();
  }
}

class CompleteProcessState extends State<CompleteProcess> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:20), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const MyDeliverport()));
    });
  }

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setEnabledSystemUIOverlays([]);*/
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(
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
                              textAlign: TextAlign.end,
                              style: const TextStyle(
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
              const SizedBox(
                height: 50,
              ),
              Text(
                AppLocalizations.of(context)!.estim,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xFF2F4D84),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Rs 120,000 - 130,000",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context)!.base,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(color: Color(0xff8A8A8F), fontSize: 15,
                      fontWeight: FontWeight.bold
                      ),
                ),
              ),
              Image.asset("assets/load.PNG"),
              Text(
                AppLocalizations.of(context)!.wait,
                 textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF2F4D84),
                    fontWeight: FontWeight.bold
                    ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.bare,
                 textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xff8A8A8F),
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
