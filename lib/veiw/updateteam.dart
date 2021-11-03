import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:meribilty/veiw/bids.dart';

class UpdateTeam extends StatefulWidget {
  const UpdateTeam({Key? key}) : super(key: key);

  @override
  _UpdateTeamState createState() => _UpdateTeamState();
}

class _UpdateTeamState extends State<UpdateTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F4D84),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              width: double.infinity,
              height: 80,
              color: const Color(0xFF2F4D84),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Ashfaq Alam",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Align(
                    child:
                        GFAvatar(backgroundImage: AssetImage("assets/hum.png")),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.clear,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      ),
                      hintText: 'First Name',
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.clear,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      ),
                      hintText: 'Mobile Number',
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.clear,
                        size: 20.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      ),
                      hintText: 'Give Limited app Access',
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Give limited app access',
                      labelStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.clear,
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
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: GFButton(
                size: 50,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Bids(),
                      ));
                },
                text: "Update",
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}
