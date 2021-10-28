import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/Message.dart';
import 'package:meribilty/SignIn.dart';
import 'package:meribilty/invitefriend.dart';
import 'package:meribilty/mydeliver.dart';
import 'package:meribilty/mywallet.dart';
import 'package:meribilty/notifications.dart';
import 'package:meribilty/orderchat.dart';
import 'package:meribilty/rating.dart';
import 'package:meribilty/setting_page.dart';
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
      body: Container(
        child: Container(
          child: GFDrawer(
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
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
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
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "PRO  ",
                                  style: TextStyle(
                                      fontSize: 20,
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
                      radius: 80.0,
                      backgroundImage: AssetImage("assets/hum.png"),
                    ),
                    otherAccountsPictures: <Widget>[],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          'Larry Davis',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 170,
                                decoration: new BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: new BorderRadius.only(
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
                                      AppLocalizations.of(context)!.cash,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      "2500 ",
                                      style: TextStyle(
                                          fontSize: 16,
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
                          MaterialPageRoute(builder: (context) => MyDeliver()));
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifcation()));
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InviteFriend()));
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
        ),
      ),
    );
  }
}
