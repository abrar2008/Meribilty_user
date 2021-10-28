import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:meribilty/Bilitychat.dart';
import 'package:meribilty/orderchat.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Message",
            style: TextStyle(
                color: Color(0xFF2F4D84),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Container(
            child: ContainedTabBarView(
          tabs: [
            Container(
                decoration: BoxDecoration(
                    color: Color(0xFF2F4D84),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 130,
                height: 190,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'Order',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )),
            Text(
              'Bility',
              style: TextStyle(fontSize: 15),
            ),
          ],
          tabBarProperties: TabBarProperties(
            width: 200,
            height: 50,
            background: Container(
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    offset: Offset(1, -1),
                  ),
                ],
              ),
            ),
            position: TabBarPosition.top,
            alignment: TabBarAlignment.center,
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[400],
          ),
          views: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GFListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderChatPage()));
                      },
                      avatar: GFAvatar(),
                      titleText: '122245',
                      subTitleText: 'see you Soon',
                      icon: Text("20 min")),
                  GFListTile(
                      avatar: GFAvatar(),
                      titleText: '4165411',
                      subTitleText: 'Thank you so mush',
                      icon: Text("2 Hours")),
                  GFListTile(
                      avatar: GFAvatar(),
                      titleText: '1254474',
                      subTitleText: 'No',
                      icon: Text("2 days")),
                  GFListTile(
                      avatar: GFAvatar(),
                      titleText: '157774',
                      subTitleText: 'No',
                      icon: Text("3 days")),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GFListTile(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BilityChat()));
                      },
                      avatar: GFAvatar(),
                      titleText: '122245',
                      subTitleText: 'see you Soon',
                      icon: Text("20 min")),
                  GFListTile(
                      avatar: GFAvatar(),
                      titleText: '4165411',
                      subTitleText: 'Thank you so mush',
                      icon: Text("2 Hours")),
                  GFListTile(
                      avatar: GFAvatar(),
                      titleText: '1254474',
                      subTitleText: 'No',
                      icon: Text("2 days")),
                  GFListTile(
                      avatar: GFAvatar(),
                      titleText: '157774',
                      subTitleText: 'No',
                      icon: Text("3 days")),
                ],
              ),
            ),
          ],
        )));
  }
}
