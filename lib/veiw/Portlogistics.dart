// ignore_for_file: prefer_const_constructors, unused_field, file_names, unnecessary_const, unnecessary_new, dead_code, avoid_print, prefer_typing_uninitialized_variables, duplicate_ignore

import 'dart:async';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:date_time_picker/date_time_picker.dart'
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribilty/place/placeItem.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/complete_process.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:meribilty/veiw/loading_port.dart';
import 'package:meribilty/veiw/materialtype.dart';
import 'package:meribilty/veiw/portlogistic.dart';
import 'package:meribilty/veiw/selectvehicleppl.dart';
import 'package:meribilty/widget/animatedtoggle.dart';
import 'package:provider/provider.dart';

// import 'package:sliding_up_panel/sliding_up_panel.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

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
     
     extendBodyBehindAppBar: true,
   
            body:
           
            SafeArea(
              child: Consumer<LocaleProvider>(
                  builder: (context ,state , child ){
                  var dropdownValue;
                  return Stack(
                  children: [
              GoogleMap(
            padding: EdgeInsets.only(top: 200),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            polylines: state.polylineport,
            markers: Set<Marker>.of(state.markers.values),
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              state.controller2=controller;
            },
              ),
                  
              SingleChildScrollView(
            child: Align(
            alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(4),
                width: MediaQuery.of(context).size.width / 1.0,
                child: Card(
                  child: Column(
                    children: <Widget>[
                    
                      Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.0,
                          
                          color:Colors.white,
                          child: new 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Expanded(
                                flex: 1,
                                child: new Column(
                                  children: <Widget>[
                                    new Icon(
                                      Icons.my_location,
                                      size: 20.0,
                                      color: Colors.blue,
                                    ),
                                    new Icon(
                                      Icons.more_vert,
                                      size: 30.0,
                                      color: Colors.grey,
                                    ),
                                    
                                    new Icon(
                                      Icons.location_on,
                                      size: 20.0,
                                      color: Colors.red,
                                    ),
                
                                    new Icon(
                                      Icons.more_vert,
                                      size: 30.0,
                                      color: Colors.grey,
                                    ),
                                     new Icon(
                                      Icons.my_location,
                                      size: 20.0,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              
                              
                              new Expanded(
                                flex: 5,
                                child:
                                
                                 Form(
                                    child: Column( 
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        // one textfeild
                                        new Container(
                                          height: 50.0,
                                          width: MediaQuery.of(context).size.width -
                                               50,
                                          color: Colors.white,
                                          child: new Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                                 TextField(
                                                style: TextStyle(fontSize: 15),
                                                decoration:
                                                InputDecoration.collapsed(
                                                  fillColor:Colors.white,
                                                  hintStyle: TextStyle(
                                                      color: Colors.black),
                                                  hintText: "PickUp Location",
                                                ),
                                                autofocus: false,
                                                focusNode: state.nodeFromport,
                                                controller: state.addressFromport,
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
                                
                                            // line 
                                         Container(
                                          width: MediaQuery.of(context).size.width -
                                              50.0,
                                          height: 1.0,
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                       
                                       
                                         // seond textfeild
                   
                                        new Container(
                                          height: 50.0,
                                          // width: MediaQuery.of(context).size.width,
                                          color: Colors.white,
                                          child: new Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              TextField(
                                                style:TextStyle(fontSize: 15),
                                                decoration:
                                                InputDecoration.collapsed(
                                                  fillColor: Colors.white,
                                                  hintStyle: TextStyle(
                                                      color: Colors.black),
                                                  hintText: "Dropoff Location",
                                                ),
                                                focusNode: state.nodeToport,
                                                autofocus: false,
                                                controller: state.addressToport,
                                                onChanged: (String value) {
                                                  state.placeBloc.searchPlace(value);
                                                },
                                                onTap: () {
                                                  setState(() {
                                                    state.inputTo = true;
                                                    state.inputFrom = false;
                                                    print(state.inputTo);
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                    // line 
                                     Container(
                                          width: MediaQuery.of(context).size.width -
                                              50.0,
                                          height: 1.0,
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                   // container 
                                    new Container(
                                         
                                          // width: MediaQuery.of(context).size.width,
                                          color: Colors.white,
                                          child: new Column(
                                           
                                           
                                            children: <Widget>[
                                           
                                           Container(
  height: 50,
  width: MediaQuery.of(context).size.width * 0.79,
  // margin: EdgeInsets.all(20),
  child: DropdownButtonHideUnderline(
    child: GFDropdown(
      hint: Text("Empty Container Return"),
      // padding: const EdgeInsets.all(15),
      // borderRadius: BorderRadius.circular(5),
      border: const BorderSide(
          color: Colors.black12, width: 1),
      dropdownButtonColor: Colors.white,
      value: dropdownValue,
      onChanged: (newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: [
        'Karachi',
        'Lahore',
        'Other',
       
      ]
          .map((value) => DropdownMenuItem(
        value: value,
        child: Text(value),
      ))
          .toList(),
    ),
  ),
),
                                             
                                          
                                          //
                                          
                                           ],
                                          ),
                                        ),
                                       
                
                                   
                                      ],
                                    )),
                              ),
                            ],
                          ),
                       //
                        ),
                      ),
                     
                     
                     //
                      state.inputTo != true
                          ? Container(
                        color: Colors.white,
                        child: StreamBuilder(
                            stream: state.placeBloc.placeStream,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                if (snapshot.data == "start") {
                                  return Center(
                                    child: CupertinoActivityIndicator(),
                                  );
                                }
                               state.placesport = snapshot.data as List<PlaceItemRes>?;
                                return ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: state.placesport!.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(state.placesport!
                                          .elementAt(index)
                                          .name
                                          .runtimeType ==
                                          String
                                          ? state.placesport!.elementAt(index).name
                                          : ""),
                                      subtitle: Text(state.placesport!
                                          .elementAt(index)
                                          .address
                                          .runtimeType ==
                                          String
                                          ? state.placesport!
                                          .elementAt(index)
                                          .address
                                          : ""),
                                      onTap: () {
                                       state.Fromdataport(index,context);
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      Divider(
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
                                  return Center(
                                    child: CupertinoActivityIndicator(),
                                  );
                                }
                               state.places2port = snapshot.data as List<PlaceItemRes>?;
                                return ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: state.places2port!.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text( state.places2port!
                                          .elementAt(index)
                                          .name
                                          .runtimeType ==
                                          String
                                          ? state.places2port!.elementAt(index).name
                                          : ""),
                                      subtitle: Text(state.places2port!
                                          .elementAt(index)
                                          .address
                                          .runtimeType ==
                                          String
                                          ? state.places2port!
                                          .elementAt(index)
                                          .address
                                          : ""),
                                      onTap: () {
                    
                                     state.ToDataport(context,index);
                                     var  _toLocation = LatLng(state.dataTocityport[0]['lat'], state.dataTocityport[0]['long']);
                                     var _fromLocation = LatLng(state.dataFromport[0]['lat'], state.dataFromport[0]['long']);
                                     state.setPolylinesport(_fromLocation, _toLocation);
                                     
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      Divider(
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
                    
                   
                  Positioned(
                    top: 650,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      child:   GFButton(
                        
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), 0.5),
              size: 50,
              color: const Color(0xFF2F4D84),
               onPressed: () {
     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Portlogis()),
                ));

              },
              text: "Conform",
              textStyle: const TextStyle(fontSize: 17,
              fontWeight: FontWeight.bold
              ),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ), 
                    )
                    
                    ),



                    
                    ]
                    
                    
                    ); 
                   } 
                   
                   
                   ),
            
            
            )
            
            
            );
           
  
  
  
  }
}

class Floatng extends StatefulWidget {
  const Floatng({ Key? key }) : super(key: key);

  @override
  _FloatngState createState() => _FloatngState();
}

class _FloatngState extends State<Floatng> {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
        padding: const EdgeInsets.only(top: 3),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
            )),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            )),
              
              height: 40,
              width:  MediaQuery.of(context).size.width ,
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
          
 
  SizedBox(height: 10,),

            
            AnimatedToggle(

            values: const ['Transit Cargo', 'Upcountry &\nLocal'],
            onToggleCallback: (value) {
              setState(() {
              });
            },
            buttonColor: const Color(0xFF0A3157),
            backgroundColor: const Color(0xFFB5C1CC),
            textColor: const Color(0xFFFFFFFF),
            ),
           
           
            SizedBox(
              height: 10,
            ),
            //
            GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), 0.5),

             
              size: 60,
              color: Color(0xFF242E42),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Selectvehicleppl()),
                ));
              
                // showMaterialModalBottomSheet(
                //   context: context,
                //   builder: (context) => SingleChildScrollView(
                //     child: Column(
                //       children: [
                //         SizedBox(
                //           height: 10,
                //         ),
                       
                        
                //         //
                //         Divider(
                //           color: Colors.black54,
                //         ),
                //         GFListTile(
                //             avatar: GFAvatar(
                //               backgroundColor: Colors.white10,
                //               shape: GFAvatarShape.square,
                //               child: Image.asset("assets/Path.png",
                //                   color: Colors.black),
                //             ),
                //             title: Text(
                //               "Truck",
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 20,
                //               ),
                //             ),
                //             subTitle: Column(
                //               children: [
                //                 SizedBox(
                //                   height: 10,
                //                 ),
                //                 Row(
                //                   children: [
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.add,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                     SizedBox(
                //                       width: 5,
                //                     ),
                //                     Text(
                //                       "0",
                //                       style: TextStyle(fontSize: 25),
                //                     ),
                //                     SizedBox(
                //                       width: 5,
                //                     ),
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.remove,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //             icon: Column(
                //               children: const [
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //                 Text(
                //                   "Select Average Weight ",
                //                   style: TextStyle(
                //                       color: Colors.black38, fontSize: 15),
                //                 )
                //               ],
                //             )),
                //         Divider(
                //           color: Colors.black54,
                //         ),
                //         GFListTile(
                //             avatar: GFAvatar(
                //               backgroundColor: Colors.white10,
                //               shape: GFAvatarShape.square,
                //               child: Image.asset("assets/Path.png",
                //                   color: Colors.black),
                //             ),
                //             title: Text(
                //               "Truck",
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 20,
                //               ),
                //             ),
                //             subTitle: Column(
                //               children: [
                //                 SizedBox(
                //                   height: 10,
                //                 ),
                //                 Row(
                //                   children: [
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.add,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                     SizedBox(
                //                       width: 5,
                //                     ),
                //                     Text(
                //                       "2",
                //                       style: const TextStyle(fontSize: 25),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.remove,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //             icon: Column(
                //               children: const [
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //                 Text(
                //                   "Select Average Weight ",
                //                   style: TextStyle(
                //                       color: Colors.black38, fontSize: 15),
                //                 )
                //               ],
                //             )),
                //         Divider(
                //           color: Colors.black54,
                //         ),
                //         GFListTile(
                //             avatar: GFAvatar(
                //               backgroundColor: Colors.white10,
                //               shape: GFAvatarShape.square,
                //               child: Image.asset("assets/Path.png",
                //                   color: const Color(0xFF2F4D84)),
                //             ),
                //             title: const Text(
                //               "40 FT Container",
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 20,
                //               ),
                //             ),
                //             subTitle: Column(
                //               children: [
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 Row(
                //                   children: [
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: const Icon(
                //                         Icons.add,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     const Text(
                //                       "1",
                //                       style: TextStyle(fontSize: 25),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.remove,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //             icon: Column(
                //               children: const [
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //                 Text(
                //                   "Select Average Weight ",
                //                   style: TextStyle(
                //                       color: Colors.black38, fontSize: 15),
                //                 )
                //               ],
                //             )), //
                //         Divider(
                //           color: Colors.black54,
                //         ),
                //         Container(
                //           color: const Color(0xFF2F4D84),
                //           child: GFListTile(
                //               avatar: GFAvatar(
                //                 backgroundColor: Colors.white10,
                //                 shape: GFAvatarShape.square,
                //                 child: Image.asset("assets/Path.png",
                //                     color: Colors.white),
                //               ),
                //               title: const Text(
                //                 "Truck 20 Wheels",
                //                 style: TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 20,
                //                 ),
                //               ),
                //               subTitle: Column(
                //                 children: [
                //                   const SizedBox(
                //                     height: 10,
                //                   ),
                //                   Row(
                //                     children: [
                //                       Container(
                //                         decoration: BoxDecoration(
                //                             color: Colors.white,
                //                             borderRadius:
                //                                 BorderRadius.circular(10)),
                //                         height: 30,
                //                         width: 30,
                //                         child: const Icon(
                //                           Icons.add,
                //                         ),
                //                       ),
                //                       const SizedBox(
                //                         width: 5,
                //                       ),
                //                       const Text(
                //                         "1",
                //                         style: TextStyle(
                //                             fontSize: 25, color: Colors.white),
                //                       ),
                //                       const SizedBox(
                //                         width: 5,
                //                       ),
                //                       Container(
                //                         decoration: BoxDecoration(
                //                             color: Colors.white,
                //                             borderRadius:
                //                                 BorderRadius.circular(10)),
                //                         height: 30,
                //                         width: 30,
                //                         child: Icon(
                //                           Icons.remove,
                //                           color: Colors.black,
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //               icon: Column(
                //                 children: const [
                //                   SizedBox(
                //                     height: 30,
                //                   ),
                //                   Text(
                //                     "5 Tons",
                //                     style: TextStyle(
                //                         color: Colors.black38, fontSize: 20),
                //                   )
                //                 ],
                //               )),
                //         ), //
                //         ///
                //         Divider(
                //           color: Colors.black54,
                //         ),
                //         GFListTile(
                //             avatar: GFAvatar(
                //               backgroundColor: Colors.white10,
                //               shape: GFAvatarShape.square,
                //               child: Image.asset("assets/Path.png",
                //                   color: Colors.black),
                //             ),
                //             title: const Text(
                //               "Truck",
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 20,
                //               ),
                //             ),
                //             subTitle: Column(
                //               children: [
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 Row(
                //                   children: [
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: const Icon(
                //                         Icons.add,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     const Text(
                //                       "0",
                //                       style: TextStyle(fontSize: 25),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.remove,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //             icon: Column(
                //               children: const [
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //                 Text(
                //                   "Select Average Weight ",
                //                   style: TextStyle(
                //                       color: Colors.black38, fontSize: 15),
                //                 )
                //               ],
                //             )),
                //         Divider(
                //           color: Colors.black54,
                //         ),
                //         GFListTile(
                //             avatar: GFAvatar(
                //               backgroundColor: Colors.white10,
                //               shape: GFAvatarShape.square,
                //               child: Image.asset("assets/Path.png",
                //                   color: Colors.black),
                //             ),
                //             title: const Text(
                //               "Truck",
                //               style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 20,
                //               ),
                //             ),
                //             subTitle: Column(
                //               children: [
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 Row(
                //                   children: [
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: const Icon(
                //                         Icons.add,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     const Text(
                //                       "0",
                //                       style: TextStyle(fontSize: 25),
                //                     ),
                //                     const SizedBox(
                //                       width: 5,
                //                     ),
                //                     Container(
                //                       decoration: BoxDecoration(
                //                           color: const Color(0xFF2F4D84),
                //                           borderRadius:
                //                               BorderRadius.circular(10)),
                //                       height: 30,
                //                       width: 30,
                //                       child: Icon(
                //                         Icons.remove,
                //                         color: Colors.white,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ],
                //             ),
                //             icon: Column(
                //               children: const [
                //                 SizedBox(
                //                   height: 30,
                //                 ),
                //                 Text(
                //                   "Select Average Weight ",
                //                   style: TextStyle(
                //                       color: Colors.black38, fontSize: 15),
                //                 )
                //               ],
                //             )),
                //         Divider(
                //           color: Colors.black54,
                //         ),
                      
                // );

                //end
              },
              text: AppLocalizations.of(context)!.vehicle,
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
            
            //
            const SizedBox(
              height: 20,
            ),
            //material
            GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), 0.5),
         
              size: 60,
              color: const Color(0xFF242E42),
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                //
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Materialtype(),
                    ));
            

                //end
              },
              text: AppLocalizations.of(context)!.material,
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
           
           //
            const SizedBox(
              height: 20,
            ),
            //load
            GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), 0.5),

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
            // Container(
            //   padding: const EdgeInsets.all(15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         AppLocalizations.of(context)!.insure,
            //         style: const TextStyle(
            //             fontSize: 15, fontWeight: FontWeight.bold),
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //             color: const Color(0xFF2F4D84),
            //             borderRadius: BorderRadius.circular(20)),
            //         height: 30,
            //         width: 40,
            //         child: const Checkbox(
            //           // fillColor: Color(0xFF2F4D84),

            //           activeColor: Color(0xFF2F4D84),
            //           value: true,
            //           onChanged: null,
            //           checkColor: Colors.white,

            //           focusColor: Color(0xFF2F4D84),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
Cargo(),
            // GFButton(
            //   color: Colors.white,
            //   size: 60,
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => Selectcargo()));

            //     //end
            //   },
            //   textStyle: const TextStyle(
            //     fontSize: 20,
            //     color: Color(0xFF2F4D84),
            //     fontWeight: FontWeight.bold,
            //   ),
            //   text: AppLocalizations.of(context)!.cargov,
            //   type: GFButtonType.solid,
            //   blockButton: true,
            //   borderSide: const BorderSide(color: Color(0xFF2F4D84), width: 2),
            // ),
            const SizedBox(
              height: 10,
            ),
            //time

            const SizedBox(
              height: 10,
            ),
            GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: new BorderRadius.circular(10.0)), 0.5),
              size: 50,
              color: const Color(0xFF2F4D84),
               onPressed: () {
    

                DatePicker.showDateTimePicker(context, showTitleActions: true,
                    onChanged: (date) {
               
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompleteProcess(),
                      ));
                }, currentTime:  DateTime.now(),);
              
              },
              text: AppLocalizations.of(context)!.quote,
              textStyle: const TextStyle(fontSize: 17,
              fontWeight: FontWeight.bold
              ),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
          ],
        ),
      )
    )
      );
    
     

  }
}




class Cargo extends StatefulWidget {
  const Cargo({Key? key}) : super(key: key);

  @override
  _CargoState createState() => _CargoState();
}

class _CargoState extends State<Cargo> { 
  bool isChecked = false;
  bool isVisiable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20,left: 15, right: 15),
      child: Column(
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 4),
                child: Text(AppLocalizations.of(context)!.insure ,
                style: TextStyle(
                  fontSize: 14,

                  fontWeight: FontWeight.w500,
                ),
                ),
              ),
              SizedBox(
                // decoration: BoxDecoration(
                //    border: Border.all(
                //     color: const Color(0xFF2F4D84),
                //     width: 6,
                //   ),
                    
                    
                    // ),
                height: 25,
                width: 36,
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
          Visibility(
            visible: isVisiable,
            child: Container(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Text("data")
            ),
          ),

        ],
      ),
    );
  }
}






























// class CustomPicker extends CommonPickerModel {
//   String digits(int value, int length) {
//     return '$value'.padLeft(length, "0");
//   }

//   CustomPicker({DateTime? currentTime, LocaleType? locale})
//       : super(locale: locale) {
//     this.currentTime = currentTime ?? DateTime.now();
//     setLeftIndex(this.currentTime.hour);
//     setMiddleIndex(this.currentTime.minute);
//     setRightIndex(this.currentTime.second);
//   }

//   @override
//   String? leftStringAtIndex(int index) {
//     if (index >= 0 && index < 24) {
//       return digits(index, 2);
//     } else {
//       return null;
//     }
//   }

//   @override
//   String? middleStringAtIndex(int index) {
//     if (index >= 0 && index < 60) {
//       return digits(index, 2);
//     } else {
//       return null;
//     }
//   }

//   @override
//   String? rightStringAtIndex(int index) {
//     if (index >= 0 && index < 60) {
//       return digits(index, 2);
//     } else {
//       return null;
//     }
//   }

//   @override
//   String leftDivider() {
//     return "|";
//   }

//   @override
//   String rightDivider() {
//     return "|";
//   }

//   @override
//   List<int> layoutProportions() {
//     return [1, 2, 1];
//   }

//   @override
//   DateTime finalTime() {
//     return currentTime.isUtc
//         ? DateTime.utc(currentTime.year, currentTime.month, currentTime.day,
//             currentLeftIndex(), currentMiddleIndex(), currentRightIndex())
//         : DateTime(currentTime.year, currentTime.month, currentTime.day,
//             currentLeftIndex(), currentMiddleIndex(), currentRightIndex());
//   }
// }

