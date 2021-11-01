// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers, unused_local_variable, unused_field

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:meribilty/loading_option.dart';

import 'package:meribilty/timewait.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Loadingselect extends StatefulWidget {
  const Loadingselect({Key? key}) : super(key: key);

  @override
  _LoadingselectState createState() => _LoadingselectState();
}

class _LoadingselectState extends State<Loadingselect> {
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
    final kInitialPosition = LatLng(-33.8567844, 151.213108);
    PickResult selectedPlace;
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 300,
        panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: Container(
            child: PlacePicker(
          apiKey: "AIzaSyDHo2tJrP5bwgbYzvJkmXpttE0S09ZUQpY",
          initialPosition: kInitialPosition,
          useCurrentLocation: true,
          selectInitialPosition: true,

          //usePlaceDetailSearch: true,
          onPlacePicked: (result) {
            selectedPlace = result;
            Navigator.of(context).pop();
            setState(() {});
          },
          //forceSearchOnZoomChanged: true,
          //automaticallyImplyAppBarLeading: false,
          //autocompleteLanguage: "ko",
          //region: 'au',
          //selectInitialPosition: true,
          // selectedPlaceWidgetBuilder: (_, selectedPlace, state, isSearchBarFocused) {
          //   print("state: $state, isSearchBarFocused: $isSearchBarFocused");
          //   return isSearchBarFocused
          //       ? Container()
          //       : FloatingCard(
          //           bottomPosition: 0.0, // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
          //           leftPosition: 0.0,
          //           rightPosition: 0.0,
          //           width: 500,
          //           borderRadius: BorderRadius.circular(12.0),
          //           child: state == SearchingState.Searching
          //               ? Center(child: CircularProgressIndicator())
          //               : RaisedButton(
          //                   child: Text("Pick Here"),
          //                   onPressed: () {
          //                     // IMPORTANT: You MUST manage selectedPlace data yourself as using this build will not invoke onPlacePicker as
          //                     //            this will override default 'Select here' Button.
          //                     print("do something with [selectedPlace] data");
          //                     Navigator.of(context).pop();
          //                   },
          //                 ),
          //         );
          // },
          // pinBuilder: (context, state) {
          //   if (state == PinState.Idle) {
          //     return Icon(Icons.favorite_border);
          //   } else {
          //     return Icon(Icons.favorite);
          //   }
          // },
        )),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc, BuildContext context) {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    print("object");
  }

  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      AppLocalizations.of(context)!.use,
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.bal,
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.white10,
                    inactiveTrackColor: Colors.black12,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rs  :350",
                    style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.est,
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rs  3528 - 3644",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
        ),
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SelectVehicle()),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(10)),
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
                              builder: (context) => Loadingselect()),
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
          textStyle: TextStyle(
            fontSize: 20,
          ),
          text: AppLocalizations.of(context)!.sel,
          type: GFButtonType.solid,
          blockButton: true,
        ),
        SizedBox(
          height: 20,
        ),
        GFButton(
          size: 60,
          color: Color(0xFF2F4D84),
          textStyle: TextStyle(
            fontSize: 20,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoadingOption()),
            );
          },
          text: AppLocalizations.of(context)!.load,
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.insure),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2F4D84),
                    borderRadius: BorderRadius.circular(10)),
                height: 30,
                width: 50,
                child: Checkbox(
                  value: true,
                  onChanged: null,
                  focusColor: Color(0xFF4CE5B1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: GFButton(
            color: Colors.white,
            textStyle: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            size: 60,
            onPressed: () {},
            text: AppLocalizations.of(context)!.cargov,
            type: GFButtonType.solid,
            fullWidthButton: true,
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
        Row(
          children: [
            GFButton(
              color: Colors.white,
              textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              size: 50,
              onPressed: () {},
              text: AppLocalizations.of(context)!.sche,
              type: GFButtonType.solid,
              borderSide: BorderSide(color: Color(0xFF2F4D84), width: 2),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 270,
              child: GFButton(
                color: Color(0xFF2F4D84),
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                size: 60,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Timewait()),
                  );
                },
                text: AppLocalizations.of(context)!.book,
                type: GFButtonType.solid,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
