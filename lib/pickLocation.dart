import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/MyDeliveries.dart';
import 'package:meribilty/complete_process.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:meribilty/loading_option.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class ProjectMain extends StatefulWidget {
  const ProjectMain({Key? key}) : super(key: key);

  @override
  _ProjectMainState createState() => _ProjectMainState();
}

class _ProjectMainState extends State<ProjectMain> {
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
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180.0), // here the desired height
          child: AppBar(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Ol.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pick Up location",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/ma.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Drop off location",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Ol.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Empty Container Return",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
        body: SlidingUpPanel(
          minHeight: 400,
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
    padding: const EdgeInsets.all(12.0),
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(40.0),
          topRight: const Radius.circular(40.0),
        )),
    child: Column(
      children: [
        Container(
          color: Colors.white30,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.dis,
                      style: TextStyle(
                          color: Color(0xFF2F4D84),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2000 km",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(
                          color: Color(0xFF2F4D84),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "200 min",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffBDBDBD),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    GFButton(
                      color: Color(0xFF2F4D84),
                      onPressed: () {},
                      text: "Transit Cargo",
                      shape: GFButtonShape.pills,
                    ),
                    GFButton(
                      color: Color(0xffBDBDBD),
                      onPressed: () {},
                      text: "Transit Cargo",
                      shape: GFButtonShape.pills,
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
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          textStyle: TextStyle(fontSize: 20),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => (),
            // );

            showMaterialModalBottomSheet(
              context: context,
              builder: (context) => Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Select Vehicle",
                        style:
                            TextStyle(color: Color(0xFF2F4D84), fontSize: 25),
                      ),
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "5 Ton Limit",
                                    style: TextStyle(color: Colors.black38),
                                  )
                                ],
                              ),
                            )),
                      ),

                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "2",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),

                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Color(0xFF2F4D84)),
                            ),
                            title: Text(
                              "40 FT Container",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ), //

                      Container(
                        color: Color(0xFF2F4D84),
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.white),
                            ),
                            title: Text(
                              "Truck 20 Wheels",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "5 Tons",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 20),
                                  )
                                ],
                              ),
                            )),
                      ), //
                      ///
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),
                      Container(
                        child: GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF2F4D84),
                                            borderRadius:
                                                new BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(Icons.minimize),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            icon: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Average Weight ",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 15),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          text: AppLocalizations.of(context)!.vehicle,
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        SizedBox(
          height: 20,
        ),
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          textStyle: TextStyle(fontSize: 20),
          onPressed: () {
            showMaterialModalBottomSheet(
                context: context,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.material,
                            style: TextStyle(
                                color: Color(0xFF2F4D84),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset("assets/arrow.png"),
                          Container(
                            child: GFListTile(
                              avatar: GFAvatar(
                                backgroundColor: Colors.white10,
                                shape: GFAvatarShape.square,
                                child: Image.asset("assets/elect.png",
                                    color: Colors.black),
                              ),
                              title: Text(
                                "Electronics",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: GFListTile(
                              avatar: GFAvatar(
                                backgroundColor: Colors.white10,
                                shape: GFAvatarShape.square,
                                child: Image.asset("assets/cement.png",
                                    color: Colors.black),
                              ),
                              title: Text(
                                "Cement",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: GFListTile(
                              avatar: GFAvatar(
                                backgroundColor: Colors.white10,
                                shape: GFAvatarShape.square,
                                child: Image.asset("assets/elect.png",
                                    color: Colors.black),
                              ),
                              title: Text(
                                "Electronics",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: GFListTile(
                              avatar: GFAvatar(
                                backgroundColor: Colors.white10,
                                shape: GFAvatarShape.square,
                                child: Image.asset("assets/cement.png",
                                    color: Colors.black),
                              ),
                              title: Text(
                                "Cement",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: GFListTile(
                              avatar: GFAvatar(
                                backgroundColor: Colors.white10,
                                shape: GFAvatarShape.square,
                                child: Image.asset("assets/elect.png",
                                    color: Colors.black),
                              ),
                              title: Text(
                                "Electronics",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          //

                          GFButton(
                            size: 60,
                            color: Color(0xFF2F4D84),
                            onPressed: () {},
                            child: Text(
                              AppLocalizations.of(context)!.save,
                              style: TextStyle(fontSize: 25),
                            ),
                            type: GFButtonType.solid,
                            shape: GFButtonShape.standard,
                            blockButton: true,
                          ),
                        ],
                      ),
                    )));
            //end
          },
          text: AppLocalizations.of(context)!.material,
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        SizedBox(
          height: 20,
        ),
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoadingOption(),
                ));
          },
          text: AppLocalizations.of(context)!.load,
          type: GFButtonType.solid,
          textStyle: TextStyle(fontSize: 20),
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.insure,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: new BoxDecoration(
                    color: Color(0xFF2F4D84),
                    borderRadius: new BorderRadius.circular(10)),
                height: 30,
                width: 50,
                child: Checkbox(
                  value: true,
                  onChanged: null,
                  focusColor: Color(0xFF2F4D84),
                ),
              ),
            ],
          ),
        ),
        GFButton(
          color: Colors.white,
          size: 60,
          onPressed: () {
            showMaterialModalBottomSheet(
                context: context,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white30,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.dis,
                                        style: TextStyle(
                                            color: Color(0xFF2F4D84),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "2000 km",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.tim,
                                        style: TextStyle(
                                            color: Color(0xFF2F4D84),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "200 min",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffBDBDBD),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      GFButton(
                                        color: Color(0xFF2F4D84),
                                        onPressed: () {},
                                        text: "Transit Cargo",
                                        shape: GFButtonShape.pills,
                                      ),
                                      GFButton(
                                        color: Color(0xffBDBDBD),
                                        onPressed: () {},
                                        text: "Upcountry &\n Local",
                                        shape: GFButtonShape.pills,
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
                          GFButton(
                            child: Container(
                              color: Color(0xff242E42),
                              child: Row(
                                children: [
                                  Image.asset("assets/truk.png"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "20 Feet Container",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "5 Tons",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xffC8C7CC)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(),
                                      onPressed: () {},
                                      child: Text(
                                        '1',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            size: 60,
                            color: Color(0xff242E42),
                            textStyle: TextStyle(fontSize: 20),
                            onPressed: () {},
                            type: GFButtonType.solid,
                            position: GFPosition.end,
                            shape: GFButtonShape.standard,
                            blockButton: true,
                          ),
                          GFButton(
                            child: Container(
                              color: Color(0xff242E42),
                              child: Row(
                                children: [
                                  Image.asset("assets/truk.png"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "40 Feet Container",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "5 Tons each ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xffC8C7CC)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: TextButton(
                                      style: ButtonStyle(),
                                      onPressed: () {},
                                      child: Text(
                                        '3',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            size: 60,
                            color: Color(0xff242E42),
                            textStyle: TextStyle(fontSize: 20),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => (),
                              // );
                            },
                            type: GFButtonType.solid,
                            position: GFPosition.end,
                            shape: GFButtonShape.standard,
                            blockButton: true,
                          ),

                          //
                          SizedBox(
                            height: 20,
                          ),
                          GFButton(
                            size: 60,
                            color: Color(0xff242E42),
                            textStyle: TextStyle(fontSize: 20),
                            onPressed: () {},
                            child: Text(
                              "Iron,cement. sand and wood",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            type: GFButtonType.solid,
                            shape: GFButtonShape.standard,
                            blockButton: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GFButton(
                            size: 60,
                            color: Color(0xff242E42),
                            onPressed: () {},
                            child: Text(
                              "1 X Crane + 1 Labor",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            type: GFButtonType.solid,
                            textStyle: TextStyle(fontSize: 20),
                            shape: GFButtonShape.standard,
                            blockButton: true,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Do you want to insure you cargo ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF2F4D84),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 50,
                                  child: Checkbox(
                                    value: true,
                                    onChanged: null,
                                    focusColor: Color(0xFF2F4D84),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GFButton(
                            color: Colors.white,
                            size: 60,
                            onPressed: () {},
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            //
                            child: Container(
                              child: Column(
                                children: [
                                  Center(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 60,
                                        ),
                                        Container(
                                          child: Text(
                                            "Material Value",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            " Rs .5, 000,00",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        child: Text(
                                          "Insurance Charges",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          " Rs .5,000",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            type: GFButtonType.solid,
                            blockButton: true,
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GFButton(
                            size: 60,
                            color: Color(0xFF2F4D84),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => (),
                              // );
                            },
                            text: AppLocalizations.of(context)!.quote,
                            textStyle: TextStyle(fontSize: 25),
                            type: GFButtonType.solid,
                            shape: GFButtonShape.standard,
                            blockButton: true,
                          ),
                        ],
                      ),
                    )));
          },
          textStyle: TextStyle(
            fontSize: 20,
            color: Color(0xFF2F4D84),
            fontWeight: FontWeight.bold,
          ),
          text: AppLocalizations.of(context)!.cargov,
          type: GFButtonType.solid,
          blockButton: true,
          borderSide: BorderSide(color: Color(0xFF2F4D84), width: 2),
        ),
        SizedBox(
          height: 10,
        ),
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => DatePage(),
            //     ));

            DatePicker.showDateTimePicker(context, showTitleActions: true,
                onChanged: (date) {
              print('change $date in time zone ' +
                  date.timeZoneOffset.inHours.toString());
            }, onConfirm: (date) {
              print('confirm $date');
            }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
          },
          text: AppLocalizations.of(context)!.selec,
          textStyle: TextStyle(fontSize: 25),
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        SizedBox(
          height: 10,
        ),
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompleteProcess(),
                ));
          },
          text: AppLocalizations.of(context)!.quote,
          textStyle: TextStyle(fontSize: 25),
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
      ],
    ),
  ));
}

class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime? currentTime, LocaleType? locale})
      : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    this.setLeftIndex(this.currentTime.hour);
    this.setMiddleIndex(this.currentTime.minute);
    this.setRightIndex(this.currentTime.second);
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex())
        : DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex());
  }
}

class DatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            //import

            //
          ],
        ),
      ),
    );
  }
}
