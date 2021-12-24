// To parse this JSON data, do
//
//     final proaccount = proaccountFromJson(jsonString);

import 'dart:convert';

Proaccount proaccountFromJson(String str) => Proaccount.fromJson(json.decode(str));

String proaccountToJson(Proaccount data) => json.encode(data.toJson());

class Proaccount {
    Proaccount({
        required this.fullname,
        required this.email,
        required this.phone,
        required this.bussinessName,
        required this.bussinessAddress,
        required this.ntn,
        required this.landline,
        required this.owner,
        required this.pointOfContact,
        required this.cargoVolumnePerMonth,
        required this.creditDuration,
        required this.creditRequirementPerMonth,
    });

    String fullname;
    String email;
    String phone;
    String bussinessName;
    String bussinessAddress;
    String ntn;
    String landline;
    String owner;
    String pointOfContact;
    String cargoVolumnePerMonth;
    String creditDuration;
    String creditRequirementPerMonth;

    factory Proaccount.fromJson(Map<String, dynamic> json) => Proaccount(
        fullname: json["fullname"],
        email: json["email"],
        phone: json["phone"],
        bussinessName: json["bussiness_name"],
        bussinessAddress: json["bussiness_address"],
        ntn: json["NTN"],
        landline: json["landline"],
        owner: json["owner"],
        pointOfContact: json["point_of_contact"],
        cargoVolumnePerMonth: json["cargo_volumne_per_month"],
        creditDuration: json["credit_duration"],
        creditRequirementPerMonth: json["credit_requirement_per_month"],
    );

    Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "email": email,
        "phone": phone,
        "bussiness_name": bussinessName,
        "bussiness_address": bussinessAddress,
        "NTN": ntn,
        "landline": landline,
        "owner": owner,
        "point_of_contact": pointOfContact,
        "cargo_volumne_per_month": cargoVolumnePerMonth,
        "credit_duration": creditDuration,
        "credit_requirement_per_month": creditRequirementPerMonth,
    };
}
