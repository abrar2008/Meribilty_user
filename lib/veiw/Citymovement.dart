

// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/place/placeItem.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/loading_option.dart';
import 'package:meribilty/veiw/selectvehiclecity.dart';
import 'package:meribilty/veiw/timewait.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Citymovement_screen extends StatefulWidget {
  const Citymovement_screen({Key? key}) : super(key: key);

  @override
  _Citymovement_screenState createState() => _Citymovement_screenState();
}

class _Citymovement_screenState extends State<Citymovement_screen> {

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),  
    zoom: 14.4746,
   );


@override
  void initState() {
  
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      
      backgroundColor: Colors.transparent,
              elevation: 0,
    // backgroundColor: Colors.,
    iconTheme:  const IconThemeData(color: Colors.black),
    
  ),
       body:
       Stack(
           children: [
          SlidingUpPanel(
            renderPanelSheet: false,
            minHeight: 200,
            maxHeight: 600,
            panel: const Floating(),
        
            // panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
            body: 
            Consumer<LocaleProvider>(
                    builder: (context ,state , child ){
                    
                    return Stack(
  children: [

            GoogleMap(
              padding: const EdgeInsets.only(top: 200),
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              polylines: state.polylinecity,
              markers: Set<Marker>.of(state.markers.values),
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                //_controller.complete(controller);
                state.controller1=controller;
              },
            ),
            SingleChildScrollView(
              child: Align(
                alignment: Alignment.topCenter,

                child: Card(
                  child:   SizedBox(
                    width: MediaQuery.of(context).size.width / 1.0,
                    child: Column(
                      children: <Widget>[

                        Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.0,
                          
                            color:Colors.white,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: const <Widget>[
                                      Icon(
                                        Icons.my_location,
                                        size: 20.0,
                                        color: Colors.blue,
                                      ),
                                      Icon(
                                        Icons.more_vert,
                                        size: 20.0,
                                        color: Colors.grey,
                                      ),
                                      Icon(
                                        Icons.location_on,
                                        size: 20.0,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child:
                                  
                                   Form(
                                      child: Column( 
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          // one textfeild
                                          Container(
                                            height: 50.0,
                                            width: MediaQuery.of(context).size.width -
                                                50,
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: <Widget>[
                
                                               // one
                                                TextField(
                                                  style: const TextStyle(fontSize: 15),
                                                  decoration:
                                                  const InputDecoration.collapsed(
                                                    fillColor:Colors.white,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black),
                                                    hintText: "PickUp Location",
                                                  ),
                                                  autofocus: false,
                                                  focusNode: state.nodeFromcity,
                                                  controller:  state.addressFromcity,
                                                  onChanged: (String value) {
                                                    state.placeBloc.searchPlace(value);
                                                  },
                                                  onTap: () {
                                                    setState(() {
                                                      state.inputFrom = true;
                                                      state.inputTo = false;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                
                
                                          // seond textfeild
                                          Container(
                                            width: MediaQuery.of(context).size.width -
                                                50.0,
                                            height: 1.0,
                                            color: Colors.grey.withOpacity(0.4),
                                          ),
                                          Container(
                                            height: 50.0,
                                            // width: MediaQuery.of(context).size.width,
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: <Widget>[
                                                TextField(
                                                  style:const TextStyle(fontSize: 15),
                                                  decoration:
                                                  const InputDecoration.collapsed(
                                                    fillColor: Colors.white,
                                                    hintStyle: TextStyle(
                                                        color: Colors.black),
                                                    hintText: "Dropoff Location",
                                                  ),
                                                  focusNode: state.nodeTocity,
                                                  autofocus: false,
                                                  controller: state.addressTocity,
                                                  onChanged: (String value) {
                                                    state.placeBloc.searchPlace(value);
                                                  },
                                                  onTap: () {
                                                    setState(() {
                                                      state.inputTo = true;
                                                      state.inputFrom = false;
                                                      // ignore: avoid_print
                                                      print(state.inputTo);
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        state.inputTo != true
                            ? Container(
                          color: Colors.white,
                          child: StreamBuilder(
                              stream: state.placeBloc.placeStream,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  if (snapshot.data == "start") {
                                    return const  Center(
                                      child: CupertinoActivityIndicator(),
                                    );
                                  }
                                 state.placescity = snapshot.data as List<PlaceItemRes>?;
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: state.placescity!.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text(state.placescity!
                                            .elementAt(index)
                                            .name
                                            .runtimeType ==
                                            String
                                            ? state.placescity!.elementAt(index).name
                                            : ""),
                                        subtitle: Text(state.placescity!
                                            .elementAt(index)
                                            .address
                                            .runtimeType ==
                                            String
                                            ? state.placescity!
                                            .elementAt(index)
                                            .address
                                            : ""),
                                        onTap: () {
                                         state.FromDataCity(index,context);
                                        },
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                          height: 1,
                                          color: Color(0xfff5f5f5),
                                        ),
                                  );
                                } else {
                                  return Container();
                                }
                              }),
                        )
                            : Container(
                          color: Colors.white,
                          child: StreamBuilder(
                              stream: state.placeBloc.placeStream,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  if (snapshot.data == "start") {
                                    return const Center(
                                      child: CupertinoActivityIndicator(),
                                    );
                                  }
                                 state.places2city = snapshot.data as List<PlaceItemRes>?;
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: state.places2city!.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text( state.places2city!
                                            .elementAt(index)
                                            .name
                                            .runtimeType ==
                                            String
                                            ? state.places2city!.elementAt(index).name
                                            : ""),
                                        subtitle: Text(state.places2city!
                                            .elementAt(index)
                                            .address
                                            .runtimeType ==
                                            String
                                            ? state.places2city!
                                            .elementAt(index)
                                            .address
                                            : ""),
                                        onTap: () {
                                          state.ToDataCity(context,index);
                                          var  _toLocation = LatLng(state.dataTocity[0]['lat'], state.dataTocity[0]['long']);
                                       var _fromLocation = LatLng(state.dataFromcity[0]['lat'], state.dataFromcity[0]['long']);
                                        state.setPolylinescity(_fromLocation, _toLocation);
                                        },
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                          height: 1,
                                          color: Color(0xfff5f5f5),
                                        ),
                                  );
                                } else {
                                  return Container();
                                }
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
                      ]); 
                     } )
                  
          ),
           ])
   
    );
  }
}




class Floating extends StatefulWidget {
  const Floating({ Key? key }) : super(key: key);

  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
   bool isSwitched = false;
  void toggleSwitch(bool value) {
   
  }
  @override
  Widget build(BuildContext context) {
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
      
      child: Container(
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
                      "Rs  :0",
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
    
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Selectvehiclecity(),
                      ));
    
              // showMaterialModalBottomSheet(
              //   context: context,
              //   builder: (context) => SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         const SizedBox(
              //           height: 10,
              //         ),
              //         const Text(
              //           "Select Vehicle",
              //           style: TextStyle(
              //               color: Color(0xFF2F4D84),
              //               fontWeight: FontWeight.w500,
              //               fontSize: 25),
              //         ),
    
              //         GFListTile(
              //           avatar: GFAvatar(
              //             backgroundColor: Colors.white10,
              //             shape: GFAvatarShape.square,
              //             child: Image.asset(
              //               "assets/Path.png",
              //               // color: Colors.black
              //             ),
              //           ),
              //           title: const Text(
              //             "Truck",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //           icon: Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.add,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               const Text(
              //                 "0",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.remove,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
                     
              //        //
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         GFListTile(
              //           avatar: GFAvatar(
              //             backgroundColor: Colors.white10,
              //             shape: GFAvatarShape.square,
              //             child:
              //                 Image.asset("assets/Path.png", color: Colors.black),
              //           ),
              //           title: const Text(
              //             "Truck",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //           icon: Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.add,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               const Text(
              //                 "0",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.remove,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         GFListTile(
              //           avatar: GFAvatar(
              //             backgroundColor: Colors.white10,
              //             shape: GFAvatarShape.square,
              //             child:
              //                 Image.asset("assets/Path.png", color: Colors.black),
              //           ),
              //           title: const Text(
              //             "Truck",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //           icon: Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.add,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               const Text(
              //                 "0",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.remove,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         GFListTile(
              //           avatar: GFAvatar(
              //             backgroundColor: Colors.white10,
              //             shape: GFAvatarShape.square,
              //             child: Image.asset("assets/Path.png",
              //                 color: const Color(0xFF2F4D84)),
              //           ),
              //           title: const Text(
              //             "40 FT Container",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //           icon: Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.add,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               const Text(
              //                 "0",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.remove,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ), //
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         Container(
              //           color: const Color(0xFF2F4D84),
              //           child: GFListTile(
              //             avatar: GFAvatar(
              //               backgroundColor: Colors.white10,
              //               shape: GFAvatarShape.square,
              //               child: Image.asset("assets/Path.png",
              //                   color: Colors.white),
              //             ),
              //             title: const Text(
              //               "Truck 20 Wheels",
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 20,
              //               ),
              //             ),
              //             icon: Row(
              //               children: [
              //                 Container(
              //                   decoration: BoxDecoration(
              //                       color: const Color(0xFF2F4D84),
              //                       borderRadius: BorderRadius.circular(10)),
              //                   height: 30,
              //                   width: 30,
              //                   child: const Icon(
              //                     Icons.add,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //                 const SizedBox(
              //                   width: 5,
              //                 ),
              //                 const Text(
              //                   "0",
              //                   style: TextStyle(fontSize: 25),
              //                 ),
              //                 const SizedBox(
              //                   width: 5,
              //                 ),
              //                 Container(
              //                   decoration: BoxDecoration(
              //                       color: const Color(0xFF2F4D84),
              //                       borderRadius: BorderRadius.circular(10)),
              //                   height: 30,
              //                   width: 30,
              //                   child: const Icon(
              //                     Icons.remove,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ), //
              //         ///
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         GFListTile(
              //           avatar: GFAvatar(
              //             backgroundColor: Colors.white10,
              //             shape: GFAvatarShape.square,
              //             child:
              //                 Image.asset("assets/Path.png", color: Colors.black),
              //           ),
              //           title: const Text(
              //             "Truck",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //           icon: Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.add,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               const Text(
              //                 "0",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.remove,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         GFListTile(
              //           avatar: GFAvatar(
              //             backgroundColor: Colors.white10,
              //             shape: GFAvatarShape.square,
              //             child:
              //                 Image.asset("assets/Path.png", color: Colors.black),
              //           ),
              //           title: const Text(
              //             "Truck",
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //           icon: Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.add,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               const Text(
              //                 "0",
              //                 style: TextStyle(fontSize: 25),
              //               ),
              //               const SizedBox(
              //                 width: 5,
              //               ),
              //               Container(
              //                 decoration: BoxDecoration(
              //                     color: const Color(0xFF2F4D84),
              //                     borderRadius: BorderRadius.circular(10)),
              //                 height: 30,
              //                 width: 30,
              //                 child: const Icon(
              //                   Icons.remove,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         const Divider(
              //           color: Colors.black54,
              //         ),
              //         GFButton(
              //           size: 60,
              //           color: const Color(0xFF2F4D84),
              //           onPressed: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) =>
              //                       const Citymovement_screen()),
              //             );
              //           },
              //           text: "Save & Contine ",
              //           textStyle:
              //               const TextStyle(fontSize: 25, color: Colors.white),
              //           type: GFButtonType.solid,
              //           shape: GFButtonShape.standard,
              //           blockButton: true,
              //         ),
              //       ],
              //     ),
              //   ),
              // );
           //
           
            },
            textStyle: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
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
            textStyle: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
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
          Cargo(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
           
                GFButton(
                  color: Colors.white,
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  size: 60,
                  onPressed: () {
                    DatePicker.showDateTimePicker(context, showTitleActions: true,
                        onChanged: (date) {
                     
                      print('change $date in time zone ' +
                          date.timeZoneOffset.inHours.toString());
                    }, onConfirm: (date) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Citymovement_screen(),
                          ));
                    }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                  },
                  text: AppLocalizations.of(context)!.sche,
                  type: GFButtonType.solid,
                  borderSide:
                      const BorderSide(color: Color(0xFF2F4D84), width: 2),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 235,
                  // padding: const EdgeInsets.all(5),
                  // width: 250,
                  child: GFButton(
                    fullWidthButton: true,
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
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
        )


        ],
      ),
      ),
    );
  }
}



// Widget _scrollingList(ScrollController sc, BuildContext context) {
//   bool isSwitched = false;
//   void toggleSwitch(bool value) {
//     // print("object");
//   }

//   return Container(
//     padding: const EdgeInsets.all(10),
//     child: Column( 
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             children: [
//               const SizedBox(
//                 width: 10,
//               ),
//               Column(
//                 children: [
//                   Text(
//                     AppLocalizations.of(context)!.use,
//                     style: const TextStyle(
//                       color: Color(0xff707070),
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     AppLocalizations.of(context)!.bal,
//                     style: const TextStyle(
//                       color: Color(0xff707070),
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Switch(
//                     onChanged: toggleSwitch,
//                     value: isSwitched,
//                     activeColor: Colors.blue,
//                     activeTrackColor: Colors.yellow,
//                     inactiveThumbColor: Colors.white10,
//                     inactiveTrackColor: Colors.black12,
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     "Rs  :350",
//                     style: TextStyle(
//                       color: Colors.green[600],
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 width: 50,
//               ),
//               Column(
//                 children: [
//                   Text(
//                     AppLocalizations.of(context)!.est,
//                     style: const TextStyle(
//                       color: Color(0xff707070),
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   const Text(
//                     "Rs  3528 - 3644",
//                     style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//         const Divider(
//           height: 10,
//           thickness: 2,
//         ),
//         GFButton(
//           size: 60,
//           color: const Color(0xFF2F4D84),
//           onPressed: () {

//             Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const Selectvehiclecity(),
//                     ));

//             // showMaterialModalBottomSheet(
//             //   context: context,
//             //   builder: (context) => SingleChildScrollView(
//             //     child: Column(
//             //       children: [
//             //         const SizedBox(
//             //           height: 10,
//             //         ),
//             //         const Text(
//             //           "Select Vehicle",
//             //           style: TextStyle(
//             //               color: Color(0xFF2F4D84),
//             //               fontWeight: FontWeight.w500,
//             //               fontSize: 25),
//             //         ),

//             //         GFListTile(
//             //           avatar: GFAvatar(
//             //             backgroundColor: Colors.white10,
//             //             shape: GFAvatarShape.square,
//             //             child: Image.asset(
//             //               "assets/Path.png",
//             //               // color: Colors.black
//             //             ),
//             //           ),
//             //           title: const Text(
//             //             "Truck",
//             //             style: TextStyle(
//             //               color: Colors.black,
//             //               fontSize: 20,
//             //             ),
//             //           ),
//             //           icon: Row(
//             //             children: [
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.add,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 "0",
//             //                 style: TextStyle(fontSize: 25),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.remove,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //         ),
                   
//             //        //
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         GFListTile(
//             //           avatar: GFAvatar(
//             //             backgroundColor: Colors.white10,
//             //             shape: GFAvatarShape.square,
//             //             child:
//             //                 Image.asset("assets/Path.png", color: Colors.black),
//             //           ),
//             //           title: const Text(
//             //             "Truck",
//             //             style: TextStyle(
//             //               color: Colors.black,
//             //               fontSize: 20,
//             //             ),
//             //           ),
//             //           icon: Row(
//             //             children: [
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.add,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 "0",
//             //                 style: TextStyle(fontSize: 25),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.remove,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //         ),
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         GFListTile(
//             //           avatar: GFAvatar(
//             //             backgroundColor: Colors.white10,
//             //             shape: GFAvatarShape.square,
//             //             child:
//             //                 Image.asset("assets/Path.png", color: Colors.black),
//             //           ),
//             //           title: const Text(
//             //             "Truck",
//             //             style: TextStyle(
//             //               color: Colors.black,
//             //               fontSize: 20,
//             //             ),
//             //           ),
//             //           icon: Row(
//             //             children: [
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.add,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 "0",
//             //                 style: TextStyle(fontSize: 25),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.remove,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //         ),
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         GFListTile(
//             //           avatar: GFAvatar(
//             //             backgroundColor: Colors.white10,
//             //             shape: GFAvatarShape.square,
//             //             child: Image.asset("assets/Path.png",
//             //                 color: const Color(0xFF2F4D84)),
//             //           ),
//             //           title: const Text(
//             //             "40 FT Container",
//             //             style: TextStyle(
//             //               color: Colors.black,
//             //               fontSize: 20,
//             //             ),
//             //           ),
//             //           icon: Row(
//             //             children: [
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.add,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 "0",
//             //                 style: TextStyle(fontSize: 25),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.remove,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //         ), //
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         Container(
//             //           color: const Color(0xFF2F4D84),
//             //           child: GFListTile(
//             //             avatar: GFAvatar(
//             //               backgroundColor: Colors.white10,
//             //               shape: GFAvatarShape.square,
//             //               child: Image.asset("assets/Path.png",
//             //                   color: Colors.white),
//             //             ),
//             //             title: const Text(
//             //               "Truck 20 Wheels",
//             //               style: TextStyle(
//             //                 color: Colors.white,
//             //                 fontSize: 20,
//             //               ),
//             //             ),
//             //             icon: Row(
//             //               children: [
//             //                 Container(
//             //                   decoration: BoxDecoration(
//             //                       color: const Color(0xFF2F4D84),
//             //                       borderRadius: BorderRadius.circular(10)),
//             //                   height: 30,
//             //                   width: 30,
//             //                   child: const Icon(
//             //                     Icons.add,
//             //                     color: Colors.white,
//             //                   ),
//             //                 ),
//             //                 const SizedBox(
//             //                   width: 5,
//             //                 ),
//             //                 const Text(
//             //                   "0",
//             //                   style: TextStyle(fontSize: 25),
//             //                 ),
//             //                 const SizedBox(
//             //                   width: 5,
//             //                 ),
//             //                 Container(
//             //                   decoration: BoxDecoration(
//             //                       color: const Color(0xFF2F4D84),
//             //                       borderRadius: BorderRadius.circular(10)),
//             //                   height: 30,
//             //                   width: 30,
//             //                   child: const Icon(
//             //                     Icons.remove,
//             //                     color: Colors.white,
//             //                   ),
//             //                 ),
//             //               ],
//             //             ),
//             //           ),
//             //         ), //
//             //         ///
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         GFListTile(
//             //           avatar: GFAvatar(
//             //             backgroundColor: Colors.white10,
//             //             shape: GFAvatarShape.square,
//             //             child:
//             //                 Image.asset("assets/Path.png", color: Colors.black),
//             //           ),
//             //           title: const Text(
//             //             "Truck",
//             //             style: TextStyle(
//             //               color: Colors.black,
//             //               fontSize: 20,
//             //             ),
//             //           ),
//             //           icon: Row(
//             //             children: [
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.add,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 "0",
//             //                 style: TextStyle(fontSize: 25),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.remove,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //         ),
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         GFListTile(
//             //           avatar: GFAvatar(
//             //             backgroundColor: Colors.white10,
//             //             shape: GFAvatarShape.square,
//             //             child:
//             //                 Image.asset("assets/Path.png", color: Colors.black),
//             //           ),
//             //           title: const Text(
//             //             "Truck",
//             //             style: TextStyle(
//             //               color: Colors.black,
//             //               fontSize: 20,
//             //             ),
//             //           ),
//             //           icon: Row(
//             //             children: [
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.add,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 "0",
//             //                 style: TextStyle(fontSize: 25),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               Container(
//             //                 decoration: BoxDecoration(
//             //                     color: const Color(0xFF2F4D84),
//             //                     borderRadius: BorderRadius.circular(10)),
//             //                 height: 30,
//             //                 width: 30,
//             //                 child: const Icon(
//             //                   Icons.remove,
//             //                   color: Colors.white,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //         ),
//             //         const Divider(
//             //           color: Colors.black54,
//             //         ),
//             //         GFButton(
//             //           size: 60,
//             //           color: const Color(0xFF2F4D84),
//             //           onPressed: () {
//             //             Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) =>
//             //                       const Citymovement_screen()),
//             //             );
//             //           },
//             //           text: "Save & Contine ",
//             //           textStyle:
//             //               const TextStyle(fontSize: 25, color: Colors.white),
//             //           type: GFButtonType.solid,
//             //           shape: GFButtonShape.standard,
//             //           blockButton: true,
//             //         ),
//             //       ],
//             //     ),
//             //   ),
//             // );
//          //
         
//           },
//           textStyle: const TextStyle(fontSize: 20, color: Colors.white),
//           text: AppLocalizations.of(context)!.sel,
//           type: GFButtonType.solid,
//           blockButton: true,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         GFButton(
//           size: 60,
//           color: const Color(0xFF2F4D84),
//           textStyle: const TextStyle(fontSize: 17, color: Colors.white),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const LoadingOption()),
//             );
//           },
//           text: AppLocalizations.of(context)!.load,
//           type: GFButtonType.solid,
//           shape: GFButtonShape.standard,
//           blockButton: true,
//         ),
//         Cargo(),
//         const SizedBox(
//           height: 10,
//         ),
//         SizedBox(
//           width: double.infinity,
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               GFButton(
//                 color: Colors.white,
//                 textStyle: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold),
//                 size: 60,
//                 onPressed: () {
//                   DatePicker.showDateTimePicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     // ignore: avoid_print
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const Citymovement_screen(),
//                         ));
//                   }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
//                 },
//                 text: AppLocalizations.of(context)!.sche,
//                 type: GFButtonType.solid,
//                 borderSide:
//                     const BorderSide(color: Color(0xFF2F4D84), width: 2),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               SizedBox(
//                 width: 235,
//                 // padding: const EdgeInsets.all(5),
//                 // width: 250,
//                 child: GFButton(
//                   fullWidthButton: true,
//                   color: const Color(0xFF2F4D84),
//                   textStyle: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold),
//                   size: 60,
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const Timewait()),
//                     );
//                   },
//                   text: AppLocalizations.of(context)!.book,
//                   type: GFButtonType.solid,
//                 ),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//             ],
//           ),
//         )
//       ],
//     ),
//   );

// //
// }

class Cargo extends StatefulWidget {
  @override
  _CargoState createState() => _CargoState();
}

class _CargoState extends State<Cargo> {
  bool isChecked = false;
  bool isVisiable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10,),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.insure),
             
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF2F4D84),
                      borderRadius: BorderRadius.circular(15)),
                  height: 30,
                  width: 40,
                  child: Checkbox(
                    activeColor: const Color(0xFF2F4D84),
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                        isVisiable = value;
                      });
                    },
                  ),
                ),

              ],
            ),
          ),
          Visibility(
            visible: isVisiable,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GFButton(
                color: Colors.white,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                size: 60,
                onPressed: () {},
                text: AppLocalizations.of(context)!.cargov,
                type: GFButtonType.solid,
                fullWidthButton: true,
                borderSide: const BorderSide(color: Colors.black, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
