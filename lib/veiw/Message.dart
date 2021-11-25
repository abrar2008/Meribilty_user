// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:meribilty/veiw/Bilitychat.dart';
import 'package:meribilty/veiw/notifications.dart';
import 'package:meribilty/veiw/orderchat.dart';

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
         
         
        ),
        body: Container(
            color: Colors.white,
            child: Column(
            children: [

              Container(
                color: Colors.white,
                 padding: EdgeInsets.only(left: 20),     
            
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
              "Message",
              style: TextStyle(
                  color: Color(0xFF2F4D84),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),

         Container(
           child:Row(
             children: [
Image.asset('assets/search.png'),
              SizedBox(
                width: 10,
              ),
             InkWell(
               onTap: (){
                 Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notifcation()));
               },
               child: Image.asset('assets/Notifica.png')),
              SizedBox(
                width: 15,
              ),
             ],
           )
           ),
             
                  ],
                ),
              ),

              
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 600,
                child: ContainedTabBarView(
               
                  tabs: [
                    Container(
                        decoration: const BoxDecoration(
                            // color: Color(0xFF2F4D84),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        width: 400,
                        height: 190,
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            child: const Text(
                              'Order',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )),
                    const Text(
                      'Bility',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                  tabBarProperties: TabBarProperties(
                    width: 300,
                    height: 50,
                    background: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(28.0)),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0.5,
                            // blurRadius: 2,
                            offset: Offset(1, -1),
                          ),
                        ],
                      ),
                    ),
                    position: TabBarPosition.top,
                    alignment: TabBarAlignment.center,
                    indicatorColor: Colors.transparent,
                   labelColor: Colors.white,
                    indicator: ContainerTabIndicator(
            radius: BorderRadius.circular(16.0),
            color: Color(0xff4C6A97),
            borderWidth: 2.0,
            borderColor: Colors.black,    
          ),
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
                          const GFListTile(
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
                ),
              ),
            ],
          ),
        ));
  }
}
