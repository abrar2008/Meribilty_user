// ignore_for_file: prefer_const_constructors, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:meribilty/veiw/home.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OtpScren extends StatefulWidget {
  const OtpScren({Key? key}) : super(key: key);

  @override
  _OtpScrenState createState() => _OtpScrenState();
}

class _OtpScrenState extends State<OtpScren> {
  void moveToNextScreen(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SuccessfulOtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    bool _onEditing = true;
    String _code;
    String currentText = "";
    final formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF375E99),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: 
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              
              Container(
                width: double.infinity,
                color: Color(0xFF375E99),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              AppLocalizations.of(context)!.verfiy,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              AppLocalizations.of(context)!.veotp,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                  ],
                ),
              ),
              //
              SizedBox(
                height: 50,
              ),

              Container(
                padding: EdgeInsets.only(left: 40),
                width: double.infinity,
                child: VerificationCode(
            
                  isSecure: true,
                  textStyle: TextStyle(fontSize: 40.0, color: Colors.black),
                  underlineColor: Colors.amber,
                  keyboardType: TextInputType.number,
                  length: 4,
                  itemSize: 70,
                  onCompleted: (String value) {
                    setState(() {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                  },
                ),
              ),

              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

class SuccessfulOtpScreen extends StatelessWidget {
  const SuccessfulOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Otp verification successful",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
