// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/veiw/unloading.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Loadingport extends StatefulWidget {
  const Loadingport({Key? key}) : super(key: key);

  @override
  _LoadingportState createState() => _LoadingportState();
}

class _LoadingportState extends State<Loadingport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        renderPanelSheet: false,
        minHeight: 700,
        panel: _floatingPanel(context),
        // panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: Container(
          color: Color(0xffF8F8F8),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: GFButton(
              size: 60,
              color: Color(0xFF2F4D84),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UnLoadingOption()),
                );
              },
              child: Text(
                AppLocalizations.of(context)!.next,
                style: TextStyle(fontSize: 17),
              ),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _floatingPanel(content) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(400.0),
          topRight: Radius.circular(400.0),
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 30.0,
            color: Colors.white,
          ),
        ]),
    margin: const EdgeInsets.all(10.0),
    // padding: const EdgeInsets.all(10.0),
    child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(content);
            },
            icon: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.black,
              size: 45,
            ),
          ),
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Text(
                AppLocalizations.of(content)!.loading,
                style: TextStyle(
                  color: Color(0xFF2F4D84),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
        ),
        body: Container(
            child: Column(
          children: [
            Container(
                color: Colors.white,
                child: Center(child: Image.asset("assets/arrow.png"))),
            Container(
              child: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: AssetImage("assets/truk.png"),
                    shape: GFAvatarShape.square,
                    size: 40,
                  ),
                  titleText: 'Labor',
                  subTitleText: 'Rs 1000 per hour/Minimum',
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
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
                              decoration: BoxDecoration(
                                  color: Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              color: Color(0xFF2F4D84),
              child: GFListTile(
                  avatar: GFAvatar(
                    foregroundColor: Color(0xFF2F4D84),
                    backgroundImage: AssetImage(
                      "assets/Path.png",
                    ),
                    shape: GFAvatarShape.square,
                  ),
                  title: Text(
                    "Crane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Text(
                    "Rs 1000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Column(
                                children: const [
                                  Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 1000 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              color: Color(0xFF2F4D84),
              child: GFListTile(
                  avatar: GFAvatar(
                    foregroundColor: Color(0xFF2F4D84),
                    backgroundImage: AssetImage(
                      "assets/Path.png",
                    ),
                    shape: GFAvatarShape.square,
                  ),
                  title: Text(
                    "Crane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Text(
                    "Rs 1000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Column(
                                children: const [
                                  Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 1000 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              color: Color(0xFF2F4D84),
              child: GFListTile(
                  avatar: GFAvatar(
                    foregroundColor: Color(0xFF4CE5B1),
                    backgroundImage: AssetImage(
                      "assets/Path.png",
                    ),
                    shape: GFAvatarShape.square,
                  ),
                  title: Text(
                    "Crane",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subTitle: Text(
                    "Rs 1000 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  icon: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(Icons.add),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs 1000 ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ))),
  );
}
