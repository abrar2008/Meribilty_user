// ignore_for_file: unused_field, file_names

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/veiw/MyDeliveries.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  _MainProfileState createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SlidingUpPanel(
          minHeight: 600,
          maxHeight: 900,
          panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
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

Widget _scrollingList(ScrollController sc, BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        GFListTile(
            avatar: const GFAvatar(
              backgroundImage: AssetImage("assets/truk.png"),
              shape: GFAvatarShape.circle,
              size: 40,
            ),
            title: const Text(
              "Syed Minhaj",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subTitleText: 'Vehicle Truck',
            description: const Text("ABC-1234"),
            icon: Column(
              children: const [
                Text(
                  "Rs .3546",
                  style: TextStyle(
                    color: Color(0xFF2F4D84),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: const [
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Image.asset("assets/shareloc.png"),
                    const Text(
                      "   Share \nLocation",
                      style: TextStyle(fontSize: 13, letterSpacing: 0),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset("assets/Message.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Chat"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/bin.png",
                      width: 30,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Cancel Request"),
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 20,
        ),
        const Text(
          "Parcel Tracking",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDeliveries()),
                );
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  //  Image.asset('assets/L1.png'),
                  Image.asset(
                    "assets/tasks.png",
                    width: 30,
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Aceept Time"),
                      Row(
                        children: const [
                          Icon(Icons.watch_later_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text("22 Aug 2019 04:47:41 PM"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //end
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDeliveries()),
                );
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  //  Image.asset('assets/L1.png'),
                  Image.asset(
                    "assets/time-left.png",
                    width: 30,
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Reached time"),
                      Row(
                        children: const [
                          Icon(Icons.watch_later_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text("00.00"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDeliveries()),
                );
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  //  Image.asset('assets/L1.png'),
                  Image.asset(
                    "assets/time-left.png",
                    width: 30,
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Pickup time"),
                      Row(
                        children: const [
                          Icon(Icons.watch_later_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text("00.00"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDeliveries()),
                );
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  //  Image.asset('assets/L1.png'),
                  Image.asset(
                    "assets/time-left.png",
                    width: 30,
                  ),

                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Delivered time"),
                      Row(
                        children: const [
                          Icon(Icons.watch_later_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text("00.00"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Item Photos",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(2),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/iconlo.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "B-292 Block 15 Block13 \n Gulshan-e-Johar",
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/dis.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "B-292 Block 15 Block13 \n Gulshan-e-Johar",
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        )
                      ])),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/distance.png",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "EST.DISTANCE : 24.1",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/alarm-clock.png",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "EST.TIME:35 mins",
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/labour-day.png",
                            width: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "LABOUS :1",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/cleaning.png",
                          width: 40,
                        ),
                        const Text(
                          "Flocrs:2",
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 2,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
