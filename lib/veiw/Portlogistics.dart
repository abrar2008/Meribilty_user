// ignore_for_file: prefer_const_constructors, unused_field, file_names, unnecessary_const, unnecessary_new

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
import 'package:meribilty/veiw/complete_process.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:meribilty/veiw/loading_port.dart';
import 'package:meribilty/veiw/selectCargo.dart';
import 'package:meribilty/veiw/weightmaterial.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Portlogistics extends StatefulWidget {
  const Portlogistics({Key? key}) : super(key: key);

  @override
  _PortlogisticsState createState() => _PortlogisticsState();
}

class _PortlogisticsState extends State<Portlogistics> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = const CameraPosition(
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
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
          renderPanelSheet: false,
          minHeight: 500,
          panel: _floatingPanel(context),

          // panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
          body: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ));
  }
}

Widget _floatingPanel(context) {
  bool _hasBeenPressed = false;
  return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]),
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
            )),
        child: Column(
          children: [
            Container(
              color: Color(0xffF2F2F2),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  Row(
                    children: const [
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
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                          color: Color(0xffF2F2F2),
                          onPressed: () {},
                          text: "Upcountry & \n   Local",
                          textStyle:
                              TextStyle(color: Colors.black45, fontSize: 10),
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
              color: Color(0xFF242E42),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => (),
                // );

                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Select Vehicle",
                          style: TextStyle(
                              color: Color(0xFF2F4D84),
                              fontWeight: FontWeight.w500,
                              fontSize: 25),
                        ),

                        GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset(
                                "assets/Path.png",
                                // color: Colors.black
                              ),
                            ),
                            title: Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
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
                                      decoration: BoxDecoration(
                                          color: Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            icon: Column(
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "5 Ton Limit",
                                  style: TextStyle(color: Colors.black38),
                                )
                              ],
                            )),
                        Divider(
                          color: Colors.black54,
                        ),
                        GFListTile(
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
                            subTitle: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
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
                                      decoration: BoxDecoration(
                                          color: Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            icon: Column(
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Select Average Weight ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                )
                              ],
                            )),
                        Divider(
                          color: Colors.black54,
                        ),
                        GFListTile(
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
                            subTitle: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "2",
                                      style: const TextStyle(fontSize: 25),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            icon: Column(
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Select Average Weight ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                )
                              ],
                            )),
                        Divider(
                          color: Colors.black54,
                        ),
                        GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: const Color(0xFF2F4D84)),
                            ),
                            title: const Text(
                              "40 FT Container",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "1",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            icon: Column(
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Select Average Weight ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                )
                              ],
                            )), //
                        Divider(
                          color: Colors.black54,
                        ),
                        Container(
                          color: const Color(0xFF2F4D84),
                          child: GFListTile(
                              avatar: GFAvatar(
                                backgroundColor: Colors.white10,
                                shape: GFAvatarShape.square,
                                child: Image.asset("assets/Path.png",
                                    color: Colors.white),
                              ),
                              title: const Text(
                                "Truck 20 Wheels",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              subTitle: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: const Icon(
                                          Icons.add,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 30,
                                        width: 30,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              icon: Column(
                                children: const [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "5 Tons",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 20),
                                  )
                                ],
                              )),
                        ), //
                        ///
                        Divider(
                          color: Colors.black54,
                        ),
                        GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: const Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "0",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            icon: Column(
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Select Average Weight ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                )
                              ],
                            )),
                        Divider(
                          color: Colors.black54,
                        ),
                        GFListTile(
                            avatar: GFAvatar(
                              backgroundColor: Colors.white10,
                              shape: GFAvatarShape.square,
                              child: Image.asset("assets/Path.png",
                                  color: Colors.black),
                            ),
                            title: const Text(
                              "Truck",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            subTitle: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "0",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF2F4D84),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 30,
                                      width: 30,
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            icon: Column(
                              children: const [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Select Average Weight ",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                )
                              ],
                            )),
                        Divider(
                          color: Colors.black54,
                        ),
                        GFButton(
                          size: 60,
                          color: const Color(0xFF2F4D84),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Weightmaterial()),
                            );
                          },
                          text: "Save & Contine ",
                          textStyle: const TextStyle(fontSize: 25),
                          type: GFButtonType.solid,
                          shape: GFButtonShape.standard,
                          blockButton: true,
                        ),
                      ],
                    ),
                  ),
                );

                //end
              },
              text: AppLocalizations.of(context)!.vehicle,
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
            const SizedBox(
              height: 20,
            ),
            //material
            GFButton(
              size: 60,
              color: const Color(0xFF242E42),
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                showMaterialModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    context: context,
                    builder: (context) => Container(
                        height: 550.0,
                        color: Colors
                            .transparent, //could change this to Color(0xFF737373),
                        //so you don't have to change MaterialApp canvasColor
                        child: new Container(
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0))),
                            child: SingleChildScrollView(
                                child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.material,
                                  style: const TextStyle(
                                      color: Color(0xFF2F4D84),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset("assets/arrow.png"),
                                InkWell(
                                  onTap: () {},
                                  child: GFListTile(
                                    color: _hasBeenPressed
                                        ? Colors.blue
                                        : Colors.white,
                                    avatar: GFAvatar(
                                      backgroundColor: Colors.white10,
                                      shape: GFAvatarShape.square,
                                      child: Image.asset("assets/elect.png",
                                          color: Colors.black),
                                    ),
                                    title: const Text(
                                      "Electronics",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                GFListTile(
                                  avatar: GFAvatar(
                                    backgroundColor: Colors.white10,
                                    shape: GFAvatarShape.square,
                                    child: Image.asset("assets/cement.png",
                                        color: Colors.black),
                                  ),
                                  title: const Text(
                                    "Cement",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                GFListTile(
                                  avatar: GFAvatar(
                                    backgroundColor: Colors.white10,
                                    shape: GFAvatarShape.square,
                                    child: Image.asset("assets/elect.png",
                                        color: Colors.black),
                                  ),
                                  title: const Text(
                                    "Electronics",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                GFListTile(
                                  avatar: GFAvatar(
                                    backgroundColor: Colors.white10,
                                    shape: GFAvatarShape.square,
                                    child: Image.asset("assets/cement.png",
                                        color: Colors.black),
                                  ),
                                  title: const Text(
                                    "Cement",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                GFListTile(
                                  avatar: GFAvatar(
                                    backgroundColor: Colors.white10,
                                    shape: GFAvatarShape.square,
                                    child: Image.asset("assets/elect.png",
                                        color: Colors.black),
                                  ),
                                  title: const Text(
                                    "Electronics",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                //

                                GFButton(
                                  size: 60,
                                  color: const Color(0xFF2F4D84),
                                  onPressed: () {},
                                  child: Text(
                                    AppLocalizations.of(context)!.save,
                                    style: const TextStyle(fontSize: 25),
                                  ),
                                  type: GFButtonType.solid,
                                  shape: GFButtonShape.standard,
                                  blockButton: true,
                                ),
                              ],
                            )))));

                //end
              },
              text: AppLocalizations.of(context)!.material,
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
            const SizedBox(
              height: 20,
            ),
            //load
            GFButton(
              size: 60,
              color: const Color(0xFF242E42),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loadingport(),
                    ));
              },
              text: AppLocalizations.of(context)!.load,
              type: GFButtonType.solid,
              textStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
            //text
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.insure,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF2F4D84),
                        borderRadius: BorderRadius.circular(20)),
                    height: 30,
                    width: 40,
                    child: const Checkbox(
                      // fillColor: Color(0xFF2F4D84),

                      activeColor: Color(0xFF2F4D84),
                      value: true,
                      onChanged: null,
                      checkColor: Colors.white,

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Selectcargo()));

                //end
              },
              textStyle: const TextStyle(
                fontSize: 20,
                color: Color(0xFF2F4D84),
                fontWeight: FontWeight.bold,
              ),
              text: AppLocalizations.of(context)!.cargov,
              type: GFButtonType.solid,
              blockButton: true,
              borderSide: const BorderSide(color: Color(0xFF2F4D84), width: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            //time

            const SizedBox(
              height: 10,
            ),
            GFButton(
              size: 60,
              color: const Color(0xFF2F4D84),
              onPressed: () {
                DatePicker.showDateTimePicker(context, showTitleActions: true,
                    onChanged: (date) {
                  // ignore: avoid_print
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompleteProcess(),
                      ));
                }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
              },
              text: AppLocalizations.of(context)!.quote,
              textStyle: const TextStyle(fontSize: 25),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
          ],
        ),
      )));
}

class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime? currentTime, LocaleType? locale})
      : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    setLeftIndex(this.currentTime.hour);
    setMiddleIndex(this.currentTime.minute);
    setRightIndex(this.currentTime.second);
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return digits(index, 2);
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
        ? DateTime.utc(currentTime.year, currentTime.month, currentTime.day,
            currentLeftIndex(), currentMiddleIndex(), currentRightIndex())
        : DateTime(currentTime.year, currentTime.month, currentTime.day,
            currentLeftIndex(), currentMiddleIndex(), currentRightIndex());
  }
}
