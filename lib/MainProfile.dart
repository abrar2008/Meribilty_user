import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/MyDeliveries.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  _MainProfileState createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SlidingUpPanel(
          minHeight: 400,
          maxHeight: 800,
          panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
          body: Container(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ));
  }
}

Widget _scrollingList(ScrollController sc, BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      child: Column(
        children: [
          Container(
            child: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/truk.png"),
                  shape: GFAvatarShape.circle,
                  size: 40,
                ),
                title: Text(
                  "Syed Minhaj",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subTitleText: 'Vehicle Truck',
                description: Text("ABC-1234"),
                icon: Container(
                  child: Column(
                    children: [
                      Text(
                        "Rs .3546",
                        style: TextStyle(
                          color: Color(0xFF2F4D84),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Call Driver"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("   Share \nLocation"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset("assets/Message.png"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Chat"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.delete_outline_rounded,
                        size: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Cancel Request"),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Text(
            "Parcel Tracking",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyDeliveries()),
                    );
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        //  Image.asset('assets/L1.png'),
                        Column(
                          children: [
                            Text("Aceept Time"),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined),
                                Text(" 22 Aug 2019 04:47:41 PM"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Column(
                        children: [
                          Text("Aceept Time"),
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text(" 22 Aug 2019 04:47:41 PM"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Column(
                        children: [
                          Text("Aceept Time"),
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text(" 22 Aug 2019 04:47:41 PM"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Column(
                        children: [
                          Text("Aceept Time"),
                          Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text(" 22 Aug 2019 04:47:41 PM"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Item Photos",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.not_listed_location),
                          Text(
                            "B-292 Block 15 Block13 \n Gulshan-e-Johar",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.not_listed_location),
                          Text(
                            "B-292 Block 15 Block13 \n Gulshan-e-Johar",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.not_listed_location),
                          Text(
                            "EST.DISTANCE : 24.1",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time_rounded),
                          Text(
                            "EST.TIME:35 mins",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.mail_rounded),
                          Text(
                            "LABOUS :1",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.not_listed_location),
                          Text(
                            "Flocrs:2",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
