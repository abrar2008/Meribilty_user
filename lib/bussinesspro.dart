// ignore_for_file: sized_box_for_whitespace, unused_element

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class BussinessPro extends StatefulWidget {
  const BussinessPro({Key? key}) : super(key: key);

  @override
  _BussinessProState createState() => _BussinessProState();
}

class _BussinessProState extends State<BussinessPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: const Color(0xFF2F4D84),
            child: const Text("Business Pro"),
          ),
          const Text(
              "I would Like to Apply to Become a bussiness pro and I agree to provide accurate bussiness information"),
          Column(
            children: [
              Row(
                children: const [
                  Text("Full Name "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Laary Davis ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Mobile number "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '+92 332232347 ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Email "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Freeslab88@gmail.com ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Business Name "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '4Slash LTD ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Business Address  "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Male ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("NTN Number"),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '5134548 ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Land Line Number "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '+9213401384 ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Are you Ownwer or team member "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Ownwer ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Point of Contact "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name/Phone',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Volume of you cargo per member "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '100 -150-200 ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("How many days of credit you need? "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '25 -30-40 ',
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Text("Per mouth credit requirement "),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '5M or more ',
                    ),
                  )
                ],
              ),
            ],
          ),
          const Text("data"),
          Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Submit".toUpperCase(),
                    style: const TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF2F4D84)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          side: BorderSide(color: Color(0xFF4CE5B1))),
                    )),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}

_onSendCounter(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Image.asset("assets/done.png"),
        const Text(
          "Business Pro Application Sent",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
        ),
        const Text(
          "Our sales team will be in touch \nwith you shortly, meanwhile you can use\n Merebility without Pro features ",
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
          "Cancel ",
          style: TextStyle(color: Colors.black38, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: const Text(
          "Done",
          style: TextStyle(color: Color(0xff4CE5B1), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}
