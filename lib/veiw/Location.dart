// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:meribilty/veiw/signIn.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 100,
              ),
              Image.asset("assets/home1.png"),
              SizedBox(
                height: 50,
              ),
              Text(
                AppLocalizations.of(context)!.meet,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.meetdetail,
                style: TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      side: BorderSide(width: 2.0, color: Color(0xFF2F4D84)),
                    ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Path.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              AppLocalizations.of(context)!.meetlocation,
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF2F4D84),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      side: BorderSide(width: 2.0, color: Color(0xFF2F4D84)),
                    ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //   width: 30,
                            // ),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            Text(
                              AppLocalizations.of(context)!.meetlom,
                              style: TextStyle(
                                  color: Color(0xFF2F4D84), fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    AppLocalizations.of(context)!.skip,
                    // ignore: prefer_const_constructors
                    style: TextStyle(color: Color(0xFF2F4D84)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
