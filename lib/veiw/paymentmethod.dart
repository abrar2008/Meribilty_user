// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:meribilty/veiw/bids.dart';
import 'package:meribilty/veiw/payment.dart';
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
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
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
                    right: 20,
                    child: InkWell(
                      onTap: () {
                        _onBankdetail(context);
                      },
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
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
                            SizedBox(width: 10,),
                            Image.asset("assets/bank.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Bank Transfer                             ",
                                    textAlign: TextAlign.start,
                                    // AppLocalizations.of(context)!.bank,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF2F4D84),
                                      fontWeight:FontWeight.bold
                                    
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "You have yo upload tranfer slip to procced",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Color(0xffC8C7CC),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20),
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
                        Text(
                          AppLocalizations.of(context)!.credit,
                          style: TextStyle(
                            color: Color(0xFF2F4D84),
                            fontSize: 20,
                             fontWeight: FontWeight.w500,
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
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 100,
                width: 350,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: const Radius.circular(10),
                        bottomLeft: const Radius.circular(10),
                        bottomRight: const Radius.circular(10)),
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
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          AppLocalizations.of(context)!.cash,
                          style: const TextStyle(
                            color: Color(0xFF2F4D84),
                            fontSize: 17,
                             fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.deft,
                          style: const TextStyle(
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
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Paymentcard()));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 100,
                  width: 350,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
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
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Row(
                    children: [
                      Image.asset("assets/bank.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 6,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              AppLocalizations.of(context)!.pay,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: Color(0xFF2F4D84),
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // Container(
                          //   alignment: Alignment.topLeft,
                          //   child: Text(
                          //     "Default payment Method",
                          //     textAlign: TextAlign.left,
                          //     style: const TextStyle(
                          //       color: Color(0xffC8C7CC),
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: 12,
                          //     ),
                          //   ),
                          // ),
                        ],
                      )
                    ],
                  ),
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
           textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20,
              
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.bankaddress,
           textAlign: TextAlign.center,
          style: const TextStyle(color: Color(0xff8A8A8F)),
        ),
        const SizedBox(
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
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
          ),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
          "Cancel ",
          style: TextStyle(color: Color(0xffC8C7CC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: const Text(
          "Done",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Bids(),
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
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.bankaddress,
          style: const TextStyle(color: Color(0xff8A8A8F)),
        ),
        const SizedBox(
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
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
          ),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
          "Cancel ",
          style: TextStyle(color: Color(0xffC8C7CC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: const Text(
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
