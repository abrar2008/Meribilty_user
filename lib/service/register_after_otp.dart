// To parse this JSON data, do
//
//     final sendRegisterOtp = sendRegisterOtpFromJson(jsonString);

import 'dart:convert';

SendRegisterOtp sendRegisterOtpFromJson(String str) => SendRegisterOtp.fromJson(json.decode(str));

String sendRegisterOtpToJson(SendRegisterOtp data) => json.encode(data.toJson());

class SendRegisterOtp {
    SendRegisterOtp({
        required this.otp,
    }); 

    String otp;

    factory SendRegisterOtp.fromJson(Map<String, dynamic> json) => SendRegisterOtp(
        otp: json["otp"],
    );

    Map<String, dynamic> toJson() => {
        "otp": otp,
    };
}
