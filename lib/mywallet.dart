import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class Mywallet extends StatefulWidget {
  const Mywallet({Key? key}) : super(key: key);

  @override
  _MywalletState createState() => _MywalletState();
}

class _MywalletState extends State<Mywallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F4D84),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(0xFF2F4D84),
              child: Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "My Wallet",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/coin.png"),
                          Text(
                            "2500",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
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
              child: Column(
                children: [
                  Container(
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
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Cash                               ",
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
                              "Default Payment Method                                   ",
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
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Balance",
                                      style:
                                          TextStyle(color: Color(0xffC8C7CC)),
                                    ),
                                    Text(
                                      "Rs. 2500",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "EXPIRES",
                                style: TextStyle(color: Color(0xffC8C7CC)),
                              ),
                              Text(
                                "09/21",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            GFListTile(
                title: Text(
                  "Payment Methods",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black54),
                ),
                icon: Row(
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                      size: 15,
                    ),
                  ],
                )),
            GFListTile(
                title: Text(
                  "Coupon",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black54),
                ),
                icon: Row(
                  children: [
                    SizedBox(
                      width: 2,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black38,
                      size: 15,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
