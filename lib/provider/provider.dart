// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print, curly_braces_in_flow_control_structures

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:meribilty/L10n/l10n.dart';
import 'package:meribilty/model/LoadOptionModels.dart';
import 'package:meribilty/model/loadoptionport.dart';
import 'package:meribilty/model/materialtype.dart';
import 'package:meribilty/model/meterial_model.dart';
import 'package:meribilty/model/selectvichele.dart';
import 'package:meribilty/model/unloadingoption.dart';
import 'package:meribilty/model/unloadportop.dart';
import 'package:meribilty/place/placeItem.dart';
import 'package:meribilty/place/place_bloc.dart';
import 'package:http/http.dart' as http;


enum Screen {
  zero,
  one,
  two,
}
class LocaleProvider extends ChangeNotifier {



// place city movement
  GoogleMapController? controller1;
  GoogleMapController? controller2;
  Location location = Location();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{}; 
  LocationData? locationData;
  FocusNode nodeFromcity = FocusNode();
  FocusNode nodeTocity = FocusNode();
  bool checkAutoFocus = false, inputFrom = false, inputTo = false;
  List<Map<String, dynamic>> dataFromcity = [];
  List<Map<String, dynamic>> dataTocity = [];
  var addressFromcity, addressTocity;
  var placeBloc = PlaceBloc();
  String? pointcity;
  String? durationcity;
  String? distancecity;
  final Set<Polyline> polylinecity = {};
  String? valueFromcity, valueTocity;
  List<PlaceItemRes>? placescity;
  List<PlaceItemRes>? places2city;


 setPolylinescity(LatLng A, LatLng B) async {
    //flag = false;
    String url = "https://maps.googleapis.com/maps/api/directions/json?origin=${A.latitude},${A.longitude}&destination=${B.latitude},${B.longitude}&key=AIzaSyBR7rrSUi4o118-vGLhDI_f6buJOnZr900";
    http.Response response = await http.get(Uri.parse(url));
    Map values = jsonDecode(response.body);
    pointcity = values["routes"][0]["overview_polyline"]["points"];
    distancecity = values["routes"][0]["legs"][0]["distance"]["text"];
    durationcity = values["routes"][0]["legs"][0]["duration"]["text"];
    //secondsD = values["routes"][0]["legs"][0]["duration"]["value"];
      polylinecity.add(Polyline(
          polylineId: const PolylineId('route1'),
          visible: true,
          points: convertToLatLngcity(decodePolycity(pointcity.toString())),
          width: 6,
          color: const Color(0xff2a2e36),
          startCap: Cap.roundCap,
          endCap: Cap.buttCap));
      notifyListeners();
     addMakerscity(A,B);


    return values["routes"][0]["overview_polyline"]["points"];
  }

 addMakerscity(var a,var b) {
    const MarkerId markerIdFrom = MarkerId("from_address");
    const MarkerId markerIdTo = MarkerId("to_address");
    

    final Marker marker = Marker(
      markerId: markerIdFrom,
      position: LatLng(a.latitude, a.longitude),
      // position: LatLng(from_l.latitude, from_l.longitude),
      infoWindow: const InfoWindow(title: "Current"),
      icon: BitmapDescriptor.defaultMarker,
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );

    final Marker markerTo = Marker(
        markerId: markerIdTo,
        //position: LatLng(to_l.latitude, to_l.longitude),
        position: LatLng(b.latitude, b.longitude),
        infoWindow: const InfoWindow(
            title: "dropout" ),
        icon: BitmapDescriptor.defaultMarker);

      markers[markerIdFrom] = marker;
      markers[markerIdTo] = markerTo;
   controller1!.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(b.latitude!.toDouble(), b.longitude!.toDouble()),
            tilt: 0,
            zoom: 18.00)));
      notifyListeners();
  }
  static List<LatLng> convertToLatLngcity(List points) {
    List<LatLng> result = <LatLng>[];
    for (int i = 0; i < points.length; i++) {
      if (i % 2 != 0) {
        result.add(LatLng(points[i - 1], points[i]));
      }
    }
    return result;
  }
static List decodePolycity(String poly) {
    var list = poly.codeUnits;
    var lList = [];
    int index = 0;
    int len = poly.length;
    int c = 0;
    // repeating until all attributes are decoded
    do {
      var shift = 0;
      int result = 0;

      // for decoding value of one attribute
      do {
        c = list[index] - 63;
        result |= (c & 0x1F) << (shift * 5);
        index++;
        shift++;
      } while (c >= 32);
      /* if value is negative then bitwise not the value */
      if (result & 1 == 1) {
        result = ~result;
      }
      var result1 = (result >> 1) * 0.00001;
      lList.add(result1);
    } while (index < len);

    /*adding to previous value as done in encoding */
    for (var i = 2; i < lList.length; i++) lList[i] += lList[i - 2];

    print(lList.toString());

    return lList;
  }

void updateMarkercity(LocationData newLocalData) {

    const MarkerId markerIdFrom = MarkerId("My Location");
    final Marker marker = Marker(
        markerId: markerIdFrom,
        //position: LatLng(_fromLocation.latitude, _fromLocation.longitude),
        position: LatLng(newLocalData.latitude!.toDouble(), newLocalData.longitude!.toDouble()),
        infoWindow: const InfoWindow(title: "Current"),
        icon:
        // ? BitmapDescriptor.fromAsset("assets/currentmarker.png")
        // : BitmapDescriptor.fromAsset("assets/currentmarker.png"),
        BitmapDescriptor.defaultMarker

    );
      markers[markerIdFrom] = marker;
      notifyListeners();

    print(markers.toString());

  }

FromDataCity(index,context){
    // dataFromcity.clear();
    Map<String, dynamic> value = {
      "name": placescity!
          .elementAt(index)
          .name,
      "address": placescity!
          .elementAt(index)
          .address,
      "lat":
      placescity!.elementAt(index).lat,
      "long":
     placescity!.elementAt(index).lng
    };
    print('dataFrom: ' + value.toString());
    placescity!.clear();
    FocusScope.of(context).requestFocus(nodeTocity);
    dataFromcity.add(value);
    valueFromcity = placescity!.elementAt(index).name.toString();
    addressFromcity = TextEditingController(text:valueFromcity);
    inputTo = true;
    notifyListeners();
    print(dataFromcity);

  }

 ToDataCity(context,index){
    // dataTocity.clear();
    Map<String, dynamic> value = {
      "name": places2city!
          .elementAt(index)
          .name,
      "address": places2city!
          .elementAt(index)
          .address,
      "lat":
      places2city!.elementAt(index).lat,
      "long":
      places2city!.elementAt(index).lng
    };
    print('dataTo: ' + value.toString());
      valueTocity =places2city!
          .elementAt(index)
          .name
          .toString();
      addressTocity =
          TextEditingController(
              text: places2city!
                  .elementAt(index)
                  .name
                  .toString());
      FocusScope.of(context)
          .requestFocus(
          FocusNode());
      dataTocity.add(value);
      print(dataTocity);
    // places2city!.clear();
      notifyListeners();
      //directions
      // DrawRoute();

  }
/// place  city end
 








/// placr port 
   var addressFromport, addressToport ,  addconstToport;
  String? valueFromport, valueToport ,valontaport;
  List<PlaceItemRes>? placesport;
  List<PlaceItemRes>? places2port;
  List<PlaceItemRes>? placconta2port;

  List<Map<String, dynamic>> dataFromport = [];
  List<Map<String, dynamic>> dataTocityport = [];
  List<Map<String, dynamic>> datacontcityport = [];

  FocusNode nodeFromport = FocusNode();
  FocusNode nodeToport = FocusNode();
  FocusNode nodecontaport = FocusNode();
 String? pointport;
  String? durationport;
  String? distanceport;
  final Set<Polyline> polylineport = {};


  setPolylinesport(LatLng A, LatLng B) async {
    //flag = false;
    String url = "https://maps.googleapis.com/maps/api/directions/json?origin=${A.latitude},${A.longitude}&destination=${B.latitude},${B.longitude}&key=AIzaSyBR7rrSUi4o118-vGLhDI_f6buJOnZr900";
    http.Response response = await http.get(Uri.parse(url));
    Map values = jsonDecode(response.body);
    pointport = values["routes"][0]["overview_polyline"]["points"];
    distanceport = values["routes"][0]["legs"][0]["distance"]["text"];
    durationport = values["routes"][0]["legs"][0]["duration"]["text"];
    //secondsD = values["routes"][0]["legs"][0]["duration"]["value"];
      polylineport.add(Polyline(
          polylineId: const PolylineId('route1'),
          visible: true,
          points: convertToLatLngport(decodePolyport(pointport.toString())),
          width: 6,
          color: const Color(0xff2a2e36),
          startCap: Cap.roundCap,
          endCap: Cap.buttCap));
      notifyListeners();
     addMakersport(A,B);


    return values["routes"][0]["overview_polyline"]["points"];
  }
  
  //addmarker
  addMakersport(var a,var b) {
    const MarkerId markerIdFrom = MarkerId("from_address");
    const MarkerId markerIdTo = MarkerId("to_address");
    // var _dataFrom = dataFrom;

    final Marker marker = Marker(
      markerId: markerIdFrom,
      position: LatLng(a.latitude, a.longitude),
      // position: LatLng(from_l.latitude, from_l.longitude),
      infoWindow: const InfoWindow(title: "Current"),
      icon: BitmapDescriptor.defaultMarker,
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );

    final Marker markerTo = Marker(
        markerId: markerIdTo,
        //position: LatLng(to_l.latitude, to_l.longitude),
        position: LatLng(b.latitude, b.longitude),
        infoWindow: const InfoWindow(
            title: "dropout" ),
        icon: BitmapDescriptor.defaultMarker);

      markers[markerIdFrom] = marker;
      markers[markerIdTo] = markerTo;
    controller2!.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(b.latitude!.toDouble(), b.longitude!.toDouble()),
            tilt: 0,
            zoom: 18.00)));
       notifyListeners();
  }



  static List<LatLng> convertToLatLngport(List points) {
    List<LatLng> result = <LatLng>[];
    for (int i = 0; i < points.length; i++) {
      if (i % 2 != 0) {
        result.add(LatLng(points[i - 1], points[i]));
      }
    }
    return result;
  }

  static List decodePolyport(String poly) {
    var list = poly.codeUnits;
    var lList = [];
    int index = 0;
    int len = poly.length;
    int c = 0;
    // repeating until all attributes are decoded
    do {
      var shift = 0;
      int result = 0;

      // for decoding value of one attribute
      do {
        c = list[index] - 63;
        result |= (c & 0x1F) << (shift * 5);
        index++;
        shift++;
      } while (c >= 32);
      /* if value is negative then bitwise not the value */
      if (result & 1 == 1) {
        result = ~result;
      }
      var result1 = (result >> 1) * 0.00001;
      lList.add(result1);
    } while (index < len);

    /*adding to previous value as done in encoding */
    for (var i = 2; i < lList.length; i++) lList[i] += lList[i - 2];

    print(lList.toString());

    return lList;
  }











Contaport(index,context){
    dataFromcity.clear();
    Map<String, dynamic> value = {
      "name": placconta2port!
          .elementAt(index)
          .name,
      "address":placconta2port!
          .elementAt(index)
          .address,
      "lat":
     placconta2port!.elementAt(index).lat,
      "long":
     placconta2port!.elementAt(index).lng
    };
    print('dataFrom: ' + value.toString());
    placconta2port!.clear();
    FocusScope.of(context).requestFocus(nodecontaport);
    datacontcityport.add(value);
    valueFromport = placesport!.elementAt(index).name.toString();
    addconstToport= TextEditingController(text:valontaport);
    inputTo = true;
    notifyListeners();
    print(datacontcityport);

  }

Fromdataport(index,context){
    // dataFromcity.clear();
    Map<String, dynamic> value = {
      "name": placesport!
          .elementAt(index)
          .name,
      "address": placesport!
          .elementAt(index)
          .address,
      "lat":
     placesport!.elementAt(index).lat,
      "long":
     placesport!.elementAt(index).lng
    };
    print('dataFrom: ' + value.toString());
    FocusScope.of(context).requestFocus(nodeToport);
    dataFromport.add(value);
    valueFromport = placesport!.elementAt(index).name.toString();
    addressFromport = TextEditingController(text:valueFromport);
    inputTo = true;
    placesport!.clear();
    notifyListeners();
    print(dataFromport);

  }

 ToDataport(context,index){
    // dataTocityport.clear();
    Map<String, dynamic> value = {
      "name": places2port!
          .elementAt(index)
          .name,
      "address": places2port!
          .elementAt(index)
          .address,
      "lat":
      places2port!.elementAt(index).lat,
      "long":
      places2port!.elementAt(index).lng
    };
    
    print('dataTo: ' + value.toString());
      valueToport =places2port!
          .elementAt(index)
          .name
          .toString();
      addressToport =
          TextEditingController(
              text: places2port!
                  .elementAt(index)
                  .name
                  .toString());
      FocusScope.of(context)
          .requestFocus(
          FocusNode());
      dataTocityport.add(value);
      print(dataTocityport);
    places2port!.clear();
      notifyListeners();
      //directions
      // DrawRoute();

  }

  getlocation(){
    location.onLocationChanged.listen((LocationData currentLocation) {
      print(currentLocation.toString());
      controller1!.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              bearing: 192.8334901395799,
              target: LatLng(currentLocation.latitude!.toDouble(), currentLocation.longitude!.toDouble()),
              tilt: 0,
              zoom: 18.00)));
      updateMarkerport(currentLocation);
      // Use current location
    });
  }
 void updateMarkerport(LocationData newLocalData) {

    const MarkerId markerIdFrom = MarkerId("My Location");
    final Marker marker = Marker(
        markerId: markerIdFrom,
        //position: LatLng(_fromLocation.latitude, _fromLocation.longitude),
        position: LatLng(newLocalData.latitude!.toDouble(), newLocalData.longitude!.toDouble()),
        infoWindow: const InfoWindow(title: "Current"),
        icon:
        // ? BitmapDescriptor.fromAsset("assets/currentmarker.png")
        // : BitmapDescriptor.fromAsset("assets/currentmarker.png"),
        BitmapDescriptor.defaultMarker

    );
      markers[markerIdFrom] = marker;
       notifyListeners();
    print(markers.toString());

  }

 

//locate  start
  Locale get locale => _locale;
 void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    notifyListeners();
  }
  Locale _locale = const Locale('hi');
//locate  end



// loading optioon  start
  var _loadOption = <LoadOptionModels>[   
    LoadOptionModels(count: 0),
   LoadOptionModels(count: 0),
    LoadOptionModels(count: 0),
   LoadOptionModels(count: 0),
  ];
List<LoadOptionModels> get loadOption => _loadOption;
void decrement(LoadOptionModels counterModels) {
    _loadOption = _loadOption.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(
              count: counterModels.count == 0 ? 0 : counterModels.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
 void increment(LoadOptionModels loadOption) {
    _loadOption = _loadOption.map((e) {
      return e.id == loadOption.id
          ? e.copyWith(count: loadOption.count == 10 ? 10 :loadOption.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// loading option end

// loading optioon port start
  var _loadoptionport = <LoadOptionportM>[   
    LoadOptionportM(count: 0),
   LoadOptionportM(count: 0),
    LoadOptionportM(count: 0),
  LoadOptionportM(count: 0),
  ];

List<LoadOptionportM> get loadOptionport => _loadoptionport;

void decrementport(LoadOptionportM loadoptionportM) {
     _loadoptionport =  _loadoptionport.map((e) {
      return e.id == loadoptionportM.id
          ? e.copyWith(
              count: loadoptionportM.count == 0 ? 0 : loadoptionportM.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
 void incrementport(LoadOptionportM loadoptionportM) {
   _loadoptionport = _loadoptionport.map((e) {
      return e.id == loadoptionportM.id
          ? e.copyWith(count: loadoptionportM.count == 10 ? 10 :loadoptionportM.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// loading option end

// Unloading Option  start
 var _unloadOption = <UnloadOptionModels>[   
    UnloadOptionModels(count: 0),
   UnloadOptionModels(count: 0),
    UnloadOptionModels(count: 0),
   UnloadOptionModels(count: 0),
  ];
List<UnloadOptionModels> get unloadOption => _unloadOption;
void decrementunload(UnloadOptionModels unloadOption) {
    _unloadOption = _unloadOption.map((e) {
      return e.id == unloadOption.id
          ? e.copyWith(
              count: unloadOption.count == 0 ? 0 : unloadOption.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
void incrementunload(UnloadOptionModels unloadOption) {
    _unloadOption = _unloadOption.map((e) {
      return e.id == unloadOption.id
          ? e.copyWith(count: unloadOption.count == 10 ? 10 :unloadOption.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// Unloading Option  End


// Unloading Option port  start
 var _unloadportop = <UnloadportModels>[   
    UnloadportModels(count: 0),
   UnloadportModels(count: 0),
   UnloadportModels(count: 0),
   UnloadportModels(count: 0),
  ];
List<UnloadportModels> get unloadport => _unloadportop;
void decunloadport(UnloadportModels unloadportop) {
    _unloadportop = _unloadportop.map((e) {
      return e.id == unloadportop.id
          ? e.copyWith(
              count: unloadportop.count == 0 ? 0 : unloadportop.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }
void increloadport(UnloadportModels unloadportOp) {
    _unloadportop = _unloadportop.map((e) {
      return e.id == unloadportOp.id
          ? e.copyWith(count: unloadportOp.count == 10 ? 10 :unloadportOp.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }

// Unloading Option port End



// Select vichele start

var _selectvichele = <SelectvicheleModels>[   
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),
    SelectvicheleModels(count: 0),

  ];
 List<SelectvicheleModels> get selectvichele => _selectvichele;
void invechechle(SelectvicheleModels counterModels) {
    _selectvichele = _selectvichele.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(count: counterModels.count == 10 ? 10 :counterModels.count + 1)
          : e;
    }).toList();
    notifyListeners();
  }
   void decvehicle(SelectvicheleModels counterModels) {
    _selectvichele = _selectvichele.map((e) {
      return e.id == counterModels.id
          ? e.copyWith(
              count: counterModels.count == 0 ? 0 : counterModels.count - 1)
          : e;
    }).toList();
    notifyListeners();
  }

  // Select vichele vichels end 

  



//  Select Materail start
final _selectmertail = <MerterialModels>[   
   
   MerterialModels(title: "1 -3"),
   MerterialModels(title: "3 -5"),
    MerterialModels(title: "5 -7"),

  ];
  List<MerterialModels> get selectmaterial => _selectmertail;

//  Select Materail end


//  Select Materailtype start

final _selectmatype = <Merterialtype>[   
   
  Merterialtype(title: 'Electrics'),
  Merterialtype(title: 'Cement'),
  Merterialtype(title: 'Electronic'),

  ];
  List<Merterialtype> get selectmatype => _selectmatype;

//  Select Materailtype end 



  final _number = 1;

  Screen _screen = Screen.zero;
 bool _flag = true;


  get number => _number;

  Screen get loadscren => _screen;

 void updatpressed() {
  _flag = !_flag ; 
    notifyListeners();
  }


  void changeScreen(Screen screen) {
    _screen = screen;
    
    notifyListeners();
  }
}
