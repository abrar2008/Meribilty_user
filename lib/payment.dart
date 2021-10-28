import 'package:flutter/material.dart';

class Paymentcard extends StatefulWidget {
  const Paymentcard({Key? key}) : super(key: key);

  @override
  _PaymentcardState createState() => _PaymentcardState();
}

class _PaymentcardState extends State<Paymentcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4EDA93),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
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
                      color: Color(0xff4EDA93),
                      child: Text(
                        "Payment Method",
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
                        onTap: () {},
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
                                  offset: Offset(
                                      0, 3), // changes position of shadow
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
                                      "Cash                       ",
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
                                    "Default Payment Method            ",
                                    style: TextStyle(
                                      color: Color(0xffC8C7CC),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
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
                child: Column(
                  children: [Text("sadas")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
