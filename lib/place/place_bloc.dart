import 'dart:async';

import 'package:meribilty/place/placeservice.dart';

class PlaceBloc {
  final _placeController = StreamController();
  Stream get placeStream => _placeController.stream;

  void searchPlace(String keyword) {
    _placeController.sink.add("start");
    PlaceService.searchPlace(keyword).then((rs) {
      _placeController.sink.add(rs);
    }).catchError((Object error) {
      // ignore: avoid_print
      print(error.toString());
//      _placeController.sink.add("stop");
    });
  }

  void dispose() {
    _placeController.close();
  }
}
