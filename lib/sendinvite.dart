import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/components/search_bar/gf_search_bar.dart';
import 'package:getwidget/size/gf_size.dart';

class Sendinvite extends StatefulWidget {
  const Sendinvite({Key? key}) : super(key: key);

  @override
  _SendinviteState createState() => _SendinviteState();
}

class _SendinviteState extends State<Sendinvite> {
  List list = [
    "Flutter",
    "React",
    "Ionic",
    "Xamarin",
  ];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invite Friends",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Color(0xFF2F4D84),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Color(0xFF2F4D84),
              width: double.infinity,
              height: 90,
              child: GFSearchBar(
                searchList: list,
                searchQueryBuilder: (query, list) {
                  return list.toList();
                },
                overlaySearchListItemBuilder: (item) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "item",
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  );
                },
                onItemSelected: (item) {
                  setState(() {
                    print('$item');
                  });
                },
              ),
            ),
            GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/pic1.png"),
                ),
                titleText: 'Johnny Rios',
                icon: Column(
                  children: [
                    GFCheckbox(
                      activeIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      inactiveBgColor: Color(0xFF2F4D84),
                      inactiveIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black45,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                    ),
                  ],
                )),
            GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/pic2.png"),
                ),
                titleText: 'Alfred Hodges',
                icon: Column(
                  children: [
                    GFCheckbox(
                      activeIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      inactiveBgColor: Color(0xFF2F4D84),
                      inactiveIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black45,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                    ),
                  ],
                )),
            GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/pic1.png"),
                ),
                titleText: 'Johnny Rios',
                icon: Column(
                  children: [
                    GFCheckbox(
                      activeIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      inactiveBgColor: Color(0xFF2F4D84),
                      inactiveIcon: Icon(Icons.add, color: Colors.white),
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black45,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                    ),
                  ],
                )),
            GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/pic2.png"),
                ),
                titleText: 'Alfred Hodges',
                icon: Column(
                  children: [
                    GFCheckbox(
                      activeIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      inactiveBgColor: Color(0xFF2F4D84),
                      inactiveIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black45,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                    ),
                  ],
                )),
            GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/pic1.png"),
                ),
                titleText: 'Johnny Rios',
                icon: Column(
                  children: [
                    GFCheckbox(
                      activeIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      inactiveBgColor: Color(0xFF2F4D84),
                      inactiveIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black45,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                    ),
                  ],
                )),
            GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage("assets/pic2.png"),
                ),
                titleText: 'Alfred Hodges',
                icon: Column(
                  children: [
                    GFCheckbox(
                      activeIcon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      inactiveBgColor: Color(0xFF2F4D84),
                      inactiveIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black45,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                      value: isChecked,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
