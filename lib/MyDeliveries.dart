// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:meribilty/completeenstime.dart';

class MyDeliveries extends StatefulWidget {
  const MyDeliveries({Key? key}) : super(key: key);

  @override
  _MyDeliveriesState createState() => _MyDeliveriesState();
}

class _MyDeliveriesState extends State<MyDeliveries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF2F4D84),
        title: Text(
          "My Deliveries  ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "22 Aug 2019, 04:45 PM ",
                  style: TextStyle(),
                ),
                Text(
                  "PKR 3546",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Completeenstime()));
              },
              child: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/truk.png"),
                  shape: GFAvatarShape.circle,
                  size: 40,
                ),
                title: Row(
                  children: const [
                    Icon(Icons.mode_standby_sharp),
                    Text(
                      "B-292 Block 15 Block 15 Gulistan-e-johar",
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                subTitle: Row(
                  children: const [
                    Icon(Icons.mode_standby_sharp),
                    Text(
                      "Karachi Northem ByPass keamari Karachi west",
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                description: Row(
                  children: const [
                    Icon(Icons.assignment_turned_in_outlined),
                    Text(
                      "Complete",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                icon: Image.asset("assets/Message.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
