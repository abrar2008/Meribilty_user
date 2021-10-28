import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class Myaccoutn extends StatefulWidget {
  const Myaccoutn({Key? key}) : super(key: key);

  @override
  _MyaccoutnState createState() => _MyaccoutnState();
}

class _MyaccoutnState extends State<Myaccoutn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4CE5B1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Color(0xff4CE5B1),
                      child: Container(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "My Account",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            GFAvatar(
                                backgroundImage: AssetImage("assets/pic1.png"))
                          ],
                        ),
                      ),
                    ),
                    GFListTile(
                        title: Text(
                          "Level",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Pro Member",
                              style: TextStyle(color: Colors.black26),
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
                          "Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Gulab Juman",
                              style: TextStyle(color: Colors.black26),
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
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "admin@gmail.com",
                              style: TextStyle(color: Colors.black26),
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
                          "Secondary Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Pro Member",
                              style: TextStyle(color: Colors.black26),
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
                          "Gender",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.black26),
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
                          "Phone number",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "+92 3323597155",
                              style: TextStyle(color: Colors.black26),
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
                          "Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "+92 3323597155",
                              style: TextStyle(color: Colors.black26),
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
                          "NTN",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "+92 3323597155",
                              style: TextStyle(color: Colors.black26),
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
                          "STN",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                        ),
                        icon: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "+92 3323597155",
                              style: TextStyle(color: Colors.black26),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
