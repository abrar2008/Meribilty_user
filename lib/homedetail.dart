// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_field

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/Message.dart';
import 'package:meribilty/MyDeliveries.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'mydeliverypage.dart';

class Homedetail extends StatefulWidget {
  const Homedetail({Key? key}) : super(key: key);

  @override
  _HomedetailState createState() => _HomedetailState();
}

class _HomedetailState extends State<Homedetail> {
  final Completer<GoogleMapController> _controller = Completer();

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
  bool isChecked = false;
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
                  "MUHAMMAD \nAKHTAR",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                description: Container(
                  child: Column(
                    children: const [
                      Text("REFFERED              "),
                      Text("CONTAINER 20 FT"),
                      Text("PNG-978                "),
                      Text("1 Labor + 1 Crane"),
                      Text("4 tons                  "),
                    ],
                  ),
                ),
                icon: Container(
                  child: Column(
                    children: [
                      Text(
                        "Rs .500000",
                        style: TextStyle(
                          color: Color(0xFF2F4D84),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GFButton(
                        color: Color(0xFF2F4D84),
                        onPressed: () {},
                        text: "Cash on Pickup",
                        shape: GFButtonShape.pills,
                        type: GFButtonType.outline,
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Message()));
                              },
                              child: Image.asset("assets/Message.png")),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Chat ")
                        ],
                      )
                    ],
                  ),
                )),
          ),

          //
          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Tracking & Check Points",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff666666)),
                ),
                Text(
                  "15 % of the \n booking Price",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
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
                          width: 20,
                        ),
                        GFCheckbox(
                          size: GFSize.SMALL,
                          activeBgColor: GFColors.DANGER,
                          type: GFCheckboxType.circle,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                          value: isChecked,
                          inactiveIcon: null,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //  Image.asset('assets/L1.png'),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Time"),
                              Row(
                                children: const [
                                  Text("22 Aug 2019 04:47:41 PM"),
                                ],
                              ),
                            ],
                          ),
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
                        width: 20,
                      ),
                      GFCheckbox(
                        size: GFSize.SMALL,
                        activeBgColor: GFColors.DANGER,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        value: isChecked,
                        inactiveIcon: null,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Offer Receiving Time"),
                            Row(
                              children: const [
                                Text(" 22 Aug 2019 04:47:41 PM"),
                              ],
                            ),
                          ],
                        ),
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
                        width: 20,
                      ),
                      GFCheckbox(
                        size: GFSize.SMALL,
                        activeBgColor: GFColors.DANGER,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        value: isChecked,
                        inactiveIcon: null,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Offer Acceptance Time")),
                            Container(
                              child: Row(
                                children: const [
                                  Text(" 22 Aug 2019 04:47:41 PM"),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                        width: 20,
                      ),
                      GFCheckbox(
                        size: GFSize.SMALL,
                        activeBgColor: GFColors.DANGER,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        value: isChecked,
                        inactiveIcon: null,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Delivery PickUp Time"),
                            Row(
                              children: const [
                                Text(" 22 Aug 2019 04:47:41 PM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GFCheckbox(
                        size: GFSize.SMALL,
                        activeBgColor: GFColors.DANGER,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        value: isChecked,
                        inactiveIcon: null,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Delivery Arrival Time"),
                            Row(
                              children: const [
                                Text(" 22 Aug 2019 04:47:41 PM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GFCheckbox(
                        size: GFSize.SMALL,
                        activeBgColor: GFColors.DANGER,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        value: isChecked,
                        inactiveIcon: null,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //  Image.asset('assets/L1.png'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Delivery Unloading  Time"),
                            Row(
                              children: const [
                                Text(" 22 Aug 2019 04:47:41 PM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GFCheckbox(
                      size: GFSize.SMALL,
                      activeBgColor: GFColors.SUCCESS,
                      type: GFCheckboxType.circle,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                      inactiveIcon: null,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //  Image.asset('assets/L1.png'),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Container Return Time"),
                          Row(
                            children: const [
                              Text(" Pending"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                GFCheckbox(
                  size: GFSize.SMALL,
                  activeBgColor: GFColors.DANGER,
                  type: GFCheckboxType.circle,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Documents Submitted"))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                GFCheckbox(
                  size: GFSize.SMALL,
                  activeBgColor: GFColors.DANGER,
                  type: GFCheckboxType.circle,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  value: isChecked,
                  inactiveIcon: null,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Documents Pending"))
              ],
            ),
          ),

          GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage("assets/truk.png"),
                shape: GFAvatarShape.circle,
                size: 40,
              ),
              title: Row(
                children: const [
                  Text(
                    "Ahmed s.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "PRO",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFF2F4D84)),
                  ),
                ],
              ),
              description: Column(
                children: const [
                  Text("Change      "),
                ],
              ),
              icon: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/Message.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/Call.png"),
                    ],
                  )
                ],
              )),

          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.not_listed_location),
                        Text(
                          "B-292 Block 15 Block13 \n Gulshan-e-Johar",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.not_listed_location),
                        Text(
                          "B-292 Block 15 Block13 \n Gulshan-e-Johar",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
