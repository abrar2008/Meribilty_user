// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:meribilty/veiw/completeenstime.dart';

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
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
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
            SizedBox(
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Completeenstime()));
                },
                child: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage("assets/truk.png"),
                    shape: GFAvatarShape.circle,
                    size: 30,
                  ),
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/gps.png",
                        width: 20,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "B-292 Block 15 Block 15 ",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  subTitle: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/shar.png",
                            width: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Karachi Northem ByPass keamari ",
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  description: Row(
                    children: [
                      Image.asset(
                        "assets/check.png",
                        width: 20,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Complete",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  icon: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset("assets/Message.png")),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
