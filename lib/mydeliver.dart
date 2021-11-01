// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:expandable/expandable.dart';
import 'package:meribilty/veiwBids.dart';

class MyDeliver extends StatefulWidget {
  const MyDeliver({Key? key}) : super(key: key);

  @override
  _MyDeliverState createState() => _MyDeliverState();
}

class _MyDeliverState extends State<MyDeliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F4D84),
        title: Text(
          "My Deliveries",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  decision(context),
                  inprocess(context),
                  cancelled(context),
                  complete(context),
                ],
              )),
        ),
      ),
    );
  }
}

Widget decision(BuildContext context) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Order No .00214 ",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
              Text(
                "09 Sep, 21 05:51 Pm",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          expand(context),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: GFButton(
                  color: Color(0xff435E8F),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VeiwBirds(),
                        ));
                  },
                  text: "Reqoute",
                  shape: GFButtonShape.pills,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GFButton(
                color: Colors.black12,
                onPressed: () {},
                text: "Rs :200,000",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Descision \nPending \n  30:00",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget expand(BuildContext context) {
  return ExpandableNotifier(
      child: Padding(
    padding: const EdgeInsets.all(10),
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Click to expand",
                      style: TextStyle(
                        color: Color(0xFF2F4D84),
                      ),
                    ),
                  )),
              collapsed: Text(
                "  ",
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ol.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pick Up location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/ma.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Drop off location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ol.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Empty Container Return",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GFButton(
                        color: Color(0xFF2F4D84),
                        onPressed: () {},
                        text: "Load",
                        shape: GFButtonShape.pills,
                      ),
                      Text("1 x Fork Lifter Rs. 3000  "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "DISTANCE",
                            style: TextStyle(
                                color: Color(0xFF2F4D84),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "2000 km",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: Color(0xFF2F4D84),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "200 min",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  ));
}

Widget inprocess(BuildContext context) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Order No .00214 ",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
              Text(
                "09 Sep, 21 05:51 Pm",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          expand(context),
          Row(
            children: [
              GFButton(
                color: Color(0xff435E8F),
                onPressed: () {},
                text: "Reqoute",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GFButton(
                color: Colors.black12,
                onPressed: () {},
                text: "Rs :200,000",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "In process",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget cancelled(BuildContext context) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Order No .00214 ",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
              Text(
                "09 Sep, 21 05:51 Pm",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          expand(context),
          Row(
            children: [
              GFButton(
                color: Color(0xFF2F4D84),
                onPressed: () {},
                text: "Reqoute",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GFButton(
                color: Colors.black12,
                onPressed: () {},
                text: "Rs :200,000",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Cancelled",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget complete(BuildContext context) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Order No .00214 ",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
              Text(
                "09 Sep, 21 05:51 Pm",
                style: TextStyle(
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          GFButton(
            child: Container(
              color: Color(0xff435E8F),
              child: Row(
                children: [
                  Image.asset("assets/truk.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '1',
                      ),
                    ),
                  )
                ],
              ),
            ),
            size: 60,
            color: Color(0xff435E8F),
            textStyle: TextStyle(fontSize: 20),
            onPressed: () {},
            type: GFButtonType.solid,
            borderSide: BorderSide.none,
            position: GFPosition.end,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
          expand(context),
          Row(
            children: [
              GFButton(
                color: Color(0xff435E8F),
                onPressed: () {},
                text: "Reqoute",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GFButton(
                color: Colors.black12,
                onPressed: () {},
                text: "Rs :200,000",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Completed",
                style: TextStyle(
                    color: Color(0xFF2F4D84),
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
