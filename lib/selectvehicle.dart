import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';

class SelectVehicle extends StatefulWidget {
  const SelectVehicle({Key? key}) : super(key: key);

  @override
  _SelectVehicleState createState() => _SelectVehicleState();
}

class _SelectVehicleState extends State<SelectVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Vehicle",
                  style: TextStyle(color: Color(0xFF4CE5B1), fontSize: 25),
                ),
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "5 Ton Limit",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      )),
                ),

                //
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),

                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "40 FT Container",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ), //

                Container(
                  color: Color(0xFF4CE5B1),
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.white),
                      ),
                      title: Text(
                        "Truck 20 Wheels",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "5 Tons",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 20),
                            )
                          ],
                        ),
                      )),
                ), //
                ///
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  child: GFListTile(
                      avatar: GFAvatar(
                        backgroundColor: Colors.white10,
                        shape: GFAvatarShape.square,
                        child:
                            Image.asset("assets/Path.png", color: Colors.black),
                      ),
                      title: Text(
                        "Truck",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      subTitle: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.add),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: new BoxDecoration(
                                      color: Color(0xFF4CE5B1),
                                      borderRadius:
                                          new BorderRadius.circular(10)),
                                  height: 30,
                                  width: 30,
                                  child: Icon(Icons.minimize),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Select Average Weight ",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(15),
          child: GFButton(
            size: 60,
            color: Color(0xFF4CE5B1),
            onPressed: () {},
            child: Text(
              "Save & Continue",
              style: TextStyle(fontSize: 25),
            ),
            type: GFButtonType.solid,
            shape: GFButtonShape.standard,
            blockButton: true,
          ),
        ),
      ),
    );
  }
}
