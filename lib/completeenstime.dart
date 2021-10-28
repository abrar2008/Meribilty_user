import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Completeenstime extends StatefulWidget {
  const Completeenstime({Key? key}) : super(key: key);

  @override
  _CompleteenstimeState createState() => _CompleteenstimeState();
}

class _CompleteenstimeState extends State<Completeenstime> {
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
        elevation: 0,
        backgroundColor: Color(0xFF2F4D84),
        title: Text(
          "22 aug 2019, 04:45 PM ",
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
            Container(
              height: 300,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Fare"),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "PKR",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "3546",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                )
              ],
            )),
            Container(
              width: double.infinity,
              child: Text("Insurance \nLoaing & Unloading"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Starting  2.4 km"),
                ),
                Container(
                  child: Text("0"),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Moving 2.4 km "),
                ),
                Container(
                  child: Text("2787"),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Time (moving + waiting 63 mins"),
                ),
                Container(
                  child: Text("319"),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("Labour Charges"),
                ),
                Container(
                  child: Text("440"),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 10,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Amount Charged",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    "PKR 3546",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
            Container(
              child: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/truk.png"),
                  shape: GFAvatarShape.circle,
                  size: 40,
                ),
                titleText: "Syed Minhaj",
                subTitleText: "Vehicle Truck",
                description: Text("ABC-1234"),
                icon: Container(
                  child: RatingBar.builder(
                    itemSize: 20,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
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
