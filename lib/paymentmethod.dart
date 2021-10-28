import 'package:flutter/material.dart';
import 'package:meribilty/bids.dart';
import 'package:meribilty/mywallet.dart';
import 'package:meribilty/payment.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F4D84),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xffF8F8F8),
        child: Column(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 160,
                    width: double.infinity,
                    color: Color(0xFF2F4D84),
                    child: Text(
                      AppLocalizations.of(context)!.payment,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 20,
                    child: InkWell(
                      onTap: () {
                        _onBankdetail(context);
                      },
                      child: Container(
                        height: 100,
                        width: 350,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          children: [
                            Image.asset("assets/bank.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  child: Text(
                                    AppLocalizations.of(context)!.bank,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        letterSpacing: 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.bankupload,
                                  style: TextStyle(
                                    color: Color(0xffC8C7CC),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //
            Container(
              height: 100,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset("assets/bank.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        child: Text(
                          AppLocalizations.of(context)!.credit,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppLocalizations.of(context)!.creditprop,
                        style: TextStyle(
                          color: Color(0xffC8C7CC),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Row(
                children: [
                  Image.asset("assets/bank.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        child: Text(
                          AppLocalizations.of(context)!.cash,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppLocalizations.of(context)!.deft,
                        style: TextStyle(
                          color: Color(0xffC8C7CC),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Paymentcard()));
              },
              child: Container(
                height: 100,
                width: 350,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    Image.asset("assets/bank.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: Text(
                              AppLocalizations.of(context)!.pay,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.deft,
                          style: TextStyle(
                            color: Color(0xffC8C7CC),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_onBankdetail(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.merbank,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.bankaddress,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
            } else {
              // User canceled the picker
            }
          },
          child: Text(
            AppLocalizations.of(context)!.bankupload,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
          ),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Cancel ",
          style: TextStyle(color: Color(0xffC8C7CC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: Text(
          "Done",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Bids(),
            )),
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}

_onpayonline(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.merbank,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.bankaddress,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
            } else {
              // User canceled the picker
            }
          },
          child: Text(
            AppLocalizations.of(context)!.bankupload,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
          ),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Cancel ",
          style: TextStyle(color: Color(0xffC8C7CC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: Text(
          "Done",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => {},
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}
