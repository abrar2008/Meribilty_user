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

enum Screen {
  zero,
  one,
  two,
}



class LocaleProvider extends ChangeNotifier {


 final bool _isVisible = true;

// place city movement
  GoogleMapController? controller1;
   GoogleMapController? controller2;
  Location location = new Location();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? locationData;

  FocusNode nodeFromcity = FocusNode();
  FocusNode nodeTocity = FocusNode();
  bool checkAutoFocus = false, inputFrom = false, inputTo = false;
  List<Map<String, dynamic>> dataFromcity = [];
  List<Map<String, dynamic>> dataTocity = [];
  var _addressFrom, _addressTo;
  var placeBloc = PlaceBloc();
  
  String? valueFromcity, valueTocity;

  List<PlaceItemRes>? placescity;
  List<PlaceItemRes>? places2city;


FromDataCity(index,context){
    dataFromcity.clear();
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
    _addressFrom = TextEditingController(text:valueFromcity);
    inputTo = true;
    notifyListeners();
    print(dataFromcity);

  }

 ToDataCity(context,index){
    dataTocity.clear();
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
      _addressTo =
          TextEditingController(
              text: places2city!
                  .elementAt(index)
                  .name
                  .toString());
      FocusScope.of(context)
          .requestFocus(
          new FocusNode());
      dataTocity.add(value);
      print(dataTocity);
    places2city!.clear();
      notifyListeners();
      //directions
      // DrawRoute();

  }
/// place  city
/// placr port 
   
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
    _addressFrom = TextEditingController(text:valontaport);
    inputTo = true;
    notifyListeners();
    print(datacontcityport);

  }

Fromdataport(index,context){
    dataFromcity.clear();
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
    placesport!.clear();
    FocusScope.of(context).requestFocus(nodeToport);
    dataFromport.add(value);
    valueFromport = placesport!.elementAt(index).name.toString();
    _addressFrom = TextEditingController(text:valueFromport);
    inputTo = true;
    notifyListeners();
    print(dataFromport);

  }

 ToDataport(context,index){
    dataTocityport.clear();
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
      _addressTo =
          TextEditingController(
              text: places2port!
                  .elementAt(index)
                  .name
                  .toString());
      FocusScope.of(context)
          .requestFocus(
          new FocusNode());
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
          new CameraPosition(
              bearing: 192.8334901395799,
              target: LatLng(currentLocation.latitude!.toDouble(), currentLocation.longitude!.toDouble()),
              tilt: 0,
              zoom: 18.00)));
      updateMarkerAndCircle(currentLocation);
      // Use current location
    });
  }
 void updateMarkerAndCircle(LocationData newLocalData) {

    final MarkerId markerIdFrom = MarkerId("My Location");
    final Marker marker = Marker(
        markerId: markerIdFrom,
        //position: LatLng(_fromLocation.latitude, _fromLocation.longitude),
        position: LatLng(newLocalData.latitude!.toDouble(), newLocalData.longitude!.toDouble()),
        infoWindow: InfoWindow(title: "Current"),
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
