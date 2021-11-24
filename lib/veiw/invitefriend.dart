// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/veiw/sendinvite.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({Key? key}) : super(key: key);

  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F4D84),
        elevation: 0,
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.invite),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xFF2F4D84),
              child: Center(
                child: Column(
                  children: [
                    
                    Image.asset("assets/Art.png"),
                    Text(
                      AppLocalizations.of(context)!.invite,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!.coupons,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppLocalizations.of(context)!.sign,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppLocalizations.of(context)!.code,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autofocus: false,
                    decoration: InputDecoration(
                      suffix: Image.asset("assets/share.png"),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(1),
                    child: GFButton(
                      
                      size: 40,
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sendinvite()));
                      },
                      text: AppLocalizations.of(context)!.invite,
                      textStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      fullWidthButton: true,
                      color: Color(0xFF2F4D84),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
