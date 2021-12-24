// To parse this JSON data, do
//
//     final appForgot = appForgotFromJson(jsonString);

import 'dart:convert';

AppForgot appForgotFromJson(String str) => AppForgot.fromJson(json.decode(str));

String appForgotToJson(AppForgot data) => json.encode(data.toJson());

class AppForgot {
    AppForgot({
        required this.phone,
    });

    String phone;

    factory AppForgot.fromJson(Map<String, dynamic> json) => AppForgot(
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "phone": phone,
    };
}
