// ignore_for_file: camel_case_types, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:meribilty/veiw/loading_option.dart';

import 'package:meribilty/veiw/timewait.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Citymovement_screen extends StatefulWidget {
  const Citymovement_screen({Key? key}) : super(key: key);

  @override
  _Citymovement_screenState createState() => _Citymovement_screenState();
}

class _Citymovement_screenState extends State<Citymovement_screen> {
  @override
  Widget build(BuildContext context) {
    const kInitialPosition = LatLng(-33.8567844, 151.213108);
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 300,
        panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: PlacePicker(
          apiKey: "AIzaSyDHo2tJrP5bwgbYzvJkmXpttE0S09ZUQpY",
          initialPosition: kInitialPosition,
          useCurrentLocation: true,
          selectInitialPosition: true,

          //usePlaceDetailSearch: true,
          onPlacePicked: (result) {
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
        ),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc, BuildContext context) {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    // print("object");
  }

  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.use,
                    style: const TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.bal,
                    style: const TextStyle(
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
                  const SizedBox(
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
              const SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.est,
                    style: const TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
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
        const Divider(
          height: 10,
          thickness: 2,
        ),
        GFButton(
          size: 60,
          color: const Color(0xFF2F4D84),
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
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
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
                      title: const Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      icon: Row(
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
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: const Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      icon: Row(
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
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: const Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      icon: Row(
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
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
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
                      icon: Row(
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
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ), //
                    const Divider(
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
                        icon: Row(
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
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), //
                    ///
                    const Divider(
                      color: Colors.black54,
                    ),
                    GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: const Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      icon: Row(
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
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: const Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      icon: Row(
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
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    GFButton(
                      size: 60,
                      color: const Color(0xFF2F4D84),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Citymovement_screen()),
                        );
                      },
                      text: "Save & Contine ",
                      textStyle:
                          const TextStyle(fontSize: 25, color: Colors.white),
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
          textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          text: AppLocalizations.of(context)!.sel,
          type: GFButtonType.solid,
          blockButton: true,
        ),
        const SizedBox(
          height: 20,
        ),
        GFButton(
          size: 60,
          color: const Color(0xFF2F4D84),
          textStyle: const TextStyle(fontSize: 17, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoadingOption()),
            );
          },
          text: AppLocalizations.of(context)!.load,
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.insure),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF2F4D84),
                    borderRadius: BorderRadius.circular(10)),
                height: 30,
                width: 50,
                child: const Checkbox(
                  value: true,
                  onChanged: null,
                  focusColor: Color(0xFF4CE5B1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: GFButton(
            color: Colors.white,
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            size: 60,
            onPressed: () {},
            text: AppLocalizations.of(context)!.cargov,
            type: GFButtonType.solid,
            fullWidthButton: true,
            borderSide: const BorderSide(color: Colors.black, width: 2),
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GFButton(
                color: Colors.white,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                size: 60,
                onPressed: () {},
                text: AppLocalizations.of(context)!.sche,
                type: GFButtonType.solid,
                borderSide:
                    const BorderSide(color: Color(0xFF2F4D84), width: 2),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                width: 230,
                child: GFButton(
                  color: const Color(0xFF2F4D84),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  size: 60,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Timewait()),
                    );
                  },
                  text: AppLocalizations.of(context)!.book,
                  type: GFButtonType.solid,
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
