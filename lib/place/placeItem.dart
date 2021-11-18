
// ignore_for_file: file_names

class PlaceItemRes {
  String name;
  String address;
  double lat;
  double lng;
  PlaceItemRes(this.name, this.address, this.lat, this.lng);

  static List<PlaceItemRes> fromJson(Map<String, dynamic> json) {
    // ignore: avoid_print
    print("parse data");
    List<PlaceItemRes> rs = [];

    var results = json['results'] as List;
    for (var item in results) {
      var p = PlaceItemRes(
          item['name'],
          item['formatted_address'],
          item['geometry']['location']['lat'],
          item['geometry']['location']['lng']);

      rs.add(p);
    }

    return rs;
  }
}
