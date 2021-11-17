import 'package:flutter/material.dart';
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
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Select Vehicle",
                style: TextStyle(color: Color(0xFF4CE5B1), fontSize: 25),
              ),
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column( 
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "5 Ton Limit",
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  )),

              //
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "2",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),

              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "40 FT Container",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "1",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )), //

              Container(
                color: const Color(0xFF4CE5B1),
                child: GFListTile(
                    avatar: GFAvatar(
                      backgroundColor: Colors.white10,
                      shape: GFAvatarShape.square,
                      child:
                          Image.asset("assets/Path.png", color: Colors.white),
                    ),
                    title: const Text(
                      "Truck 20 Wheels",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    subTitle: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(fontSize: 25),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: const Icon(Icons.minimize),
                            ),
                          ],
                        ),
                      ],
                    ),
                    icon: Column(
                      children: const [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "5 Tons",
                          style: TextStyle(color: Colors.black38, fontSize: 20),
                        )
                      ],
                    )),
              ), //
              ///
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),
              GFListTile(
                  avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    shape: GFAvatarShape.square,
                    child: Image.asset("assets/Path.png", color: Colors.black),
                  ),
                  title: const Text(
                    "Truck",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 25),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF4CE5B1),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 30,
                            child: const Icon(Icons.minimize),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Select Average Weight ",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: GFButton(
            size: 60,
            color: const Color(0xFF4CE5B1),
            onPressed: () {},
            child: const Text(
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
