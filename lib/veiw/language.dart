// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:meribilty/veiw/onbounding.dart';
import 'package:meribilty/provider/provider.dart';

import 'package:provider/provider.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<LocaleProvider>(context);
    // final locale = provider.locale ?? Locale('en');

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/first.png"), fit: BoxFit.cover)),
        child: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/logo.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      child: Container(
                        width: 200,
                        height: 90,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Text("English",
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xFF2F4D84))),
                          style: ButtonStyle(
                              alignment: Alignment.center,
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    side: BorderSide(
                                      color: Color(0xFF2F4D84),
                                      width: 2,
                                    )),
                              )),
                          onPressed: () {
                            final provide = context
                                .read<LocaleProvider>()
                                .setLocale(const Locale('en'));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnBoardingPage()));
                          },
                        ),
                      )),
                  Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: double.infinity,
                      child: Container(
                        width: 200,
                        height: 90,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                            child: Text("اردو".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2F4D84))),
                            style: ButtonStyle(
                                alignment: Alignment.center,
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      side: BorderSide(
                                        color: Color(0xFF2F4D84),
                                        width: 2,
                                      )),
                                )),
                            onPressed: () {
                              // final provide = context
                              //     .read<LocaleProvider>()
                              //     .setLocale(const Locale('hi'));
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => OnBoardingPage()));
                            }),
                      )),
                  //
                  // Container(
                  //   width: double.infinity,
                  //   padding: EdgeInsets.only(left: 10, right: 10),
                  //   child: Container(
                  //     width: 200,
                  //     height: 90,
                  //     padding: EdgeInsets.all(10),
                  //     child: ElevatedButton(
                  //       style: ButtonStyle(
                  //           backgroundColor:
                  //               MaterialStateProperty.all<Color>(Colors.white),
                  //           shape:
                  //               MaterialStateProperty.all<RoundedRectangleBorder>(
                  //             RoundedRectangleBorder(
                  //                 borderRadius:
                  //                     BorderRadius.all(Radius.circular(8)),
                  //                 side: BorderSide(
                  //                   color: Color(0xFF2F4D84),
                  //                   width: 2,
                  //                 )),
                  //           )),
                  //       onPressed: () {

                  //       },
                  //       child: Column(
                  //         children: [
                  //           SizedBox(
                  //             height: 20,
                  //           ),
                  //           Row(
                  //             children: const [
                  //               SizedBox(
                  //                 width: 140,
                  //               ),
                  //               Center(
                  // child: Text(
                  //   'اردو',
                  //   style: TextStyle(
                  //     color: Color(0xFF2F4D84),
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
