// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/position/gf_position.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/veiw/homedetail.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Mydeliverypage extends StatefulWidget {
  const Mydeliverypage({Key? key}) : super(key: key);

  @override
  _MydeliverypageState createState() => _MydeliverypageState();
}

class _MydeliverypageState extends State<Mydeliverypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SlidingUpPanel(
      renderPanelSheet: false,
      minHeight: 200,
      maxHeight: 600,
      panel: _floatingPanel(context),
      // panelBuilder: (ScrollController sc) => _scrollingList(sc),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [complete(context)],
          ),
        ),
      ),
    ));
  }

  Widget _floatingPanel(context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20.0,
                color: Colors.grey,
              ),
            ]),
        margin: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Order Bility",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF2F4D84),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset("assets/arrow.png"),
            Container(
              child: GFListTile(
                  avatar: GFAvatar(
                    size: 60,
                    backgroundColor: Colors.white,
                    shape: GFAvatarShape.standard,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/t.png",
                          width: 50,
                        ),
                        Text(
                          "Mazda",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                        Text(
                          "20 Feet",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                        Text(
                          "Pending",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffFF3B30)),
                        )
                      ],
                    ),
                  ),
                  titleText: 'BT145857',
                  description: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Driver Pending",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "Status          ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: const [
                        Text(
                          "09 Sept, 2021",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Pending",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "In Process",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: GFListTile(
                  avatar: GFAvatar(
                    size: 60,
                    backgroundColor: Colors.white,
                    shape: GFAvatarShape.standard,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/t.png",
                          width: 50,
                        ),
                        Text(
                          "Mazda",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                        Text(
                          "20 Feet",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                        Text(
                          "AML-410",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                  titleText: 'BT145857',
                  description: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Ahmed Bashir",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "Status          ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: const [
                        Text(
                          "09 Sept, 2021",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "032233230882",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "In Process",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: GFListTile(
                  avatar: GFAvatar(
                    size: 60,
                    backgroundColor: Colors.white,
                    shape: GFAvatarShape.standard,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/t.png",
                          width: 50,
                        ),
                        Text(
                          "Mazda",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                        Text(
                          "20 Feet",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        ),
                        Text(
                          "AML-410",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                  titleText: 'BT145857',
                  description: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Ahmed Bashir",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: Text(
                            "Status          ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: const [
                        Text(
                          "09 Sept, 2021",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "032233230882",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "In Process",
                          style: TextStyle(color: Color(0xffC8C7CC)),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        )));
  }
}

// Widget _floatingPanel(context) {
//   return Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(10.0),
//             topRight: Radius.circular(10.0),
//           ),
//           boxShadow: const [
//             BoxShadow(
//               blurRadius: 20.0,
//               color: Colors.grey,
//             ),
//           ]),
//       margin: const EdgeInsets.all(10.0),
//       child: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(12.0),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: const Radius.circular(40.0),
//                 topRight: const Radius.circular(40.0),
//               )),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 10,
//               ),

//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                   child: Column(
//                 children: [
//                   SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Image.asset("assets/arrow.png"),

//

//                                     SizedBox(
//                                       height: 4,
//                                     ),
//                                     Container(
//                                       child: Text(
//                                         "Status          ",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w300),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               icon: Container(
//                                 child: Column(
//                                   children: const [
//                                     Text(
//                                       "09 Sept, 2021",
//                                       style:
//                                           TextStyle(color: Color(0xffC8C7CC)),
//                                     ),
//                                     SizedBox(
//                                       height: 10,
//                                     ),
//                                     Text(
//                                       "032233230882",
//                                       style:
//                                           TextStyle(color: Color(0xffC8C7CC)),
//                                     ),
//                                     SizedBox(
//                                       height: 10,
//                                     ),
//                                     Text(
//                                       "In Process",
//                                       style:
//                                           TextStyle(color: Color(0xffC8C7CC)),
//                                     ),
//                                   ],
//                                 ),
//                               )),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ))

//               ///
//             ],
//           ),
//         ),
//       ));
// }

Widget complete(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Card(
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
                        color: Color(0xFF2F4D84), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "09 Sep, 21 05:51 Pm",
                    style: TextStyle(
                        color: Color(0xFF2F4D84), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GFButton(
                child: Container(
                  color: Color(0xFF2F4D84),
                  child: Row(
                    children: [
                      Image.asset("assets/truk.png"),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
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
                              "5 Tons each",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffC8C7CC)),
                            )
                          ],
                        ),
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
                color: Color(0xFF2F4D84),
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
                  color: Color(0xFF2F4D84),
                  child: Row(
                    children: [
                      Image.asset("assets/truk.png"),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Column(
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
                              "5 Tons each",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffC8C7CC)),
                            )
                          ],
                        ),
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
                color: Color(0xFF2F4D84),
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
                    text: "COD",
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
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homedetail()));
                    },
                    child: Text(
                      "Completed",
                      style: TextStyle(
                          color: Color(0xFF2F4D84),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget expand(BuildContext context) {
  bool isChecked = false;
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
                        size: 20,
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
                      GFButton(
                        size: 20,
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
                      Container(
                        child: Row(
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
                      ),
                      Container(
                          child: Row(
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
                      )),
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

void setState(Null Function() param0) {}
