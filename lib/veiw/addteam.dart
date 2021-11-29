import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:meribilty/veiw/updateteam.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AddTeam extends StatefulWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  _AddTeamState createState() => _AddTeamState();
}

class _AddTeamState extends State<AddTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2F4D84),
          elevation: 0,
        ),
        body: SlidingUpPanel(
          renderPanelSheet: false,
          minHeight: 260,
          panel: _floatingPanel(context),
          // panelBuilder: (ScrollController sc) => _scrollingList(sc),
          body: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 80,
                  color: const Color(0xFF2F4D84),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Add Team",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                       Image.asset("assets/Follow.png"),
                     
                      const SizedBox(
                        width: 9,
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Column(
                  children: [
                    
                    TextFormField(
                      autofocus: false,
                    
                      decoration: const InputDecoration(
                        
                          hintText: 'First Name',
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                    
                       
                          
                          ),
                    ),
                    TextFormField(
                      autofocus: false,
                     
                      decoration: const InputDecoration(
                       
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        ),
                        hintText: 'Last Name',
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                    TextFormField(
                      autofocus: false,
                     
                      decoration: const InputDecoration(
                         hintText: 'Email',
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        ),
                       
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                    TextFormField(
                      autofocus: false,
                     
                      decoration: const InputDecoration(
                       
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        ),
                        hintText: 'Give limited app access',
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: GFButton(
                    size: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UpdateTeam(),
                          ));
                    },
                    text: "Add Team",
                    textStyle: const TextStyle(
                        fontSize: 21, fontWeight: FontWeight.bold),
                    blockButton: true,
                    color: const Color(0xFF2F4D84),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
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
            "Team Member",
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
          GFListTile(
              avatar: const GFAvatar(
                backgroundImage: AssetImage("assets/hum.png"),
                shape: GFAvatarShape.circle,
                size: 40,
              ),
              titleText: 'Ashfaq Alam ',
              icon: Column(
                children: const [
                  Text(
                    "03223384476",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          GFListTile(
              avatar: const GFAvatar(
                backgroundImage: AssetImage("assets/hum.png"),
                shape: GFAvatarShape.circle,
                size: 40,
              ),
              titleText: 'Ashfaq Alam ',
              icon: Column(
                children: const [
                  Text(
                    "03223384476",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          GFListTile(
              avatar: const GFAvatar(
                backgroundImage: AssetImage("assets/hum.png"),
                shape: GFAvatarShape.circle,
                size: 40,
              ),
              titleText: 'Ashfaq Alam ',
              icon: Column(
                children: const [
                  Text(
                    "03223384476",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          GFListTile(
              avatar: const GFAvatar(
                backgroundImage: AssetImage("assets/hum.png"),
                shape: GFAvatarShape.circle,
                size: 40,
              ),
              titleText: 'Ashfaq Alam ',
              icon: Column(
                children: const [
                  Text(
                    "03223384476",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
        ],
      )));
}
