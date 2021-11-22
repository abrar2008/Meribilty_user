// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/veiw/Message.dart';
import 'package:meribilty/veiw/signIn.dart';
import 'package:meribilty/veiw/invitefriend.dart';
import 'package:meribilty/veiw/mydeliverport.dart';
import 'package:meribilty/veiw/mywallet.dart';
import 'package:meribilty/veiw/notifications.dart';
import 'package:meribilty/veiw/setting_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Darwe extends StatefulWidget {
  const Darwe({Key? key}) : super(key: key);

  @override
  _DarweState createState() => _DarweState();
}

class _DarweState extends State<Darwe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFDrawer(
        child: Container(
          // height: 500,
          child: ListView(
            // padding: EdgeInsets.zero,
            children: <Widget>[
              GFDrawerHeader(
                closeButton: Container(
                  // alignment: Alignment.topRight,
                  // width: 30,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      InkWell(
                        
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close)),
                      SizedBox(
                        width: 120,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0),
                              bottomLeft: const Radius.circular(40.0),
                              bottomRight: const Radius.circular(40.0),
                            )),
                        child: Row(
                          children: [
                            Text(
                              "  Get ",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "PRO ",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFf4CE5B1),
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                currentAccountPicture: GFAvatar(
                

                  backgroundImage: AssetImage(
                    "assets/pic2.png",
                  ),
                ),
                otherAccountsPictures: <Widget>[],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Larry Davis',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(40.0),
                                      topRight: const Radius.circular(40.0),
                                      bottomLeft: const Radius.circular(40.0),
                                      bottomRight: const Radius.circular(40.0),
                                    )),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.cah,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "2500 ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFf4CE5B1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 8,
                                    ),
                                  ],
                                ),
                              ),
                              // GFButton(
                              //   color: Colors.white,
                              //   textColor: Colors.black,
                              //   onPressed: () {},
                              //   text: "",
                              //   child: Row(
                              //     children: [
                              //       Text(
                              //         "Cash ",
                              //         style: TextStyle(color: Colors.black),
                              //       ),
                              //       Text(
                              //         "Cash ",
                              //         style: TextStyle(color: Colors.red),
                              //       ),
                              //     ],
                              //   ),
                              //   shape: GFButtonShape.pills,
                              // ),
                              SizedBox(
                                width: 55,
                              ),
                              Image.asset(
                                "assets/Noti.png",
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset("assets/mes.png"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(AppLocalizations.of(context)!.hom),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Mywallet()));
                },
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text(AppLocalizations.of(context)!.mywalle),
              ),
              ListTile(
                leading: Icon(Icons.access_time_outlined),
                title: Text(AppLocalizations.of(context)!.mydeliver),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MyDeliverport()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text(AppLocalizations.of(context)!.team),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text(AppLocalizations.of(context)!.notifica),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Notifcation()));
                },
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Message()));
                },
                leading: Icon(Icons.chat_bubble_outline_sharp),
                title: Text(AppLocalizations.of(context)!.chat),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => InviteFriend()));
                },
                leading: Icon(Icons.wallet_giftcard),
                title: Text(AppLocalizations.of(context)!.invite),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Setting()));
                },
                leading: Icon(Icons.settings),
                title: Text(AppLocalizations.of(context)!.setting),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(AppLocalizations.of(context)!.logout),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
