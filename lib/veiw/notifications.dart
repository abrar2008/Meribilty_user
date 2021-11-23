// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Notifcation extends StatefulWidget {
  const Notifcation({Key? key}) : super(key: key);

  @override
  _NotifcationState createState() => _NotifcationState();
}

class _NotifcationState extends State<Notifcation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF2F4D84),
      ),
      body: Column(
        children: [
          
          Container(
            height: 50,
            color: Color(0xFF2F4D84),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  AppLocalizations.of(context)!.noto,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/notific.png")
              ],
            ),
          ),
          GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage(
                "assets/Shape2.png",
              ),
              size: 20,
            ),
            titleText: 'System',
            subTitleText: 'Your booking #1234 has bees successfully',
          ),
          GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage(
                "assets/shape4.png",
              ),
              size: 20,
            ),
            titleText: 'Promotion',
            subTitleText: 'Invite friends -Get 3 coupons each',
          ),
          GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage(
                "assets/shape4.png",
              ),
              size: 20,
            ),
            titleText: 'Promotion',
            subTitleText: 'Invite friends -Get 3 coupons each',
          ),
          GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage(
                "assets/Shape3.png",
              ),
              size: 20,
            ),
            titleText: 'System',
            subTitleText: 'Your booking #1205 has been cancelled',
          ),
          GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage(
                "assets/sha.png",
              ),
              size: 20,
            ),
            titleText: 'System',
            subTitleText: 'Your booking #1205 has been cancelled',
          ),
       
       
        ],
      ),
    );
  }
}
