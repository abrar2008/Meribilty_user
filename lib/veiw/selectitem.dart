import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/position/gf_position.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/veiw/Portlogistics.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Selectitme extends StatefulWidget {
  const Selectitme({Key? key}) : super(key: key);

  @override
  _SelectitmeState createState() => _SelectitmeState();
}

class _SelectitmeState extends State<Selectitme> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(180.0), // here the desired height
          child: AppBar(
              shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Ol.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Pick Up location",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/ma.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Drop off location",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Ol.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
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
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.grey,
          ),
        ]),
    margin: const EdgeInsets.all(10.0),
    child: SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          )),
      child: Column(
        children: [
          Container(
            color: const Color(0xffF2F2F2),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.dis,
                      style: const TextStyle(
                          color: Color(0xFF2F4D84),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "2000 km",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.tim,
                      style: const TextStyle(
                          color: Color(0xFF2F4D84),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "200 min",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffBDBDBD),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    GFButton(
                      color: const Color(0xFF2F4D84),
                      onPressed: () {},
                      text: "Transit Cargo",
                      shape: GFButtonShape.pills,
                    ),
                    GFButton(
                      color: const Color(0xffBDBDBD),
                      onPressed: () {},
                      text: "Upcountry &\n Local",
                      shape: GFButtonShape.pills,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GFButton(
            child: Container(
              color: const Color(0xff242E42),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: const ButtonStyle(),
                      onPressed: () {},
                      child: const Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: const Color(0xff242E42),
            textStyle: const TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          GFButton(
            child: Container(
              color: const Color(0xff242E42),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "40 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons each ",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: const ButtonStyle(),
                      onPressed: () {},
                      child: const Text(
                        '3',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: const Color(0xff242E42),
            textStyle: const TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),

          //
          const SizedBox(
            height: 20,
          ),
          GFButton(
            size: 60,
            color: const Color(0xff242E42),
            textStyle: const TextStyle(fontSize: 20),
            onPressed: () {},
            child: const Text(
              "Iron,cement. sand and wood",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          const SizedBox(
            height: 20,
          ),
          GFButton(
            size: 60,
            color: const Color(0xff242E42),
            onPressed: () {},
            child: const Text(
              "1 X Crane + 1 Labor",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            type: GFButtonType.solid,
            textStyle: const TextStyle(fontSize: 20),
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Do you want to insure you cargo ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF2F4D84),
                      borderRadius: BorderRadius.circular(10)),
                  height: 30,
                  width: 50,
                  child: const Checkbox(
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
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            //
            child: Column(
              children: [
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Material Value",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        " Rs .5, 000,00",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Insurance Charges",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      " Rs .5,000",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ],
            ),
            type: GFButtonType.solid,
            blockButton: true,
            borderSide: const BorderSide(color: Colors.black, width: 2),
          ),
          const SizedBox(
            height: 10,
          ),
          GFButton(
            size: 60,
            color: const Color(0xFF2F4D84),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Portlogistics(),
                  ));
            },
            text: AppLocalizations.of(context)!.quote,
            textStyle: const TextStyle(fontSize: 25),
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
        ],
      ),
    )),
  );
}
