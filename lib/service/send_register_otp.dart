// To parse this JSON data, do
//
//     final sendRegisterOtp = sendRegisterOtpFromJson(jsonString);

import 'dart:convert';

SendRegisterOtp sendRegisterOtpFromJson(String str) => SendRegisterOtp.fromJson(json.decode(str));

String sendRegisterOtpToJson(SendRegisterOtp data) => json.encode(data.toJson());

class SendRegisterOtp {
    SendRegisterOtp({
        required this.fullname,
        required this.email,
        required this.phone,
        required this.password,
    });

    String fullname;
    String email;
    String phone;
    String password;

    factory SendRegisterOtp.fromJson(Map<String, dynamic> json) => SendRegisterOtp(
        fullname: json["fullname"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "email": email,
        "phone": phone,
        "password": password,
    };
}
