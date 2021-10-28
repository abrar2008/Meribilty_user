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
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Color(0xFF2F4D84),
              child: Text("Business Pro"),
            ),
            Container(
              child: Text(
                  "I would Like to Apply to Become a bussiness pro and I agree to provide accurate bussiness information"),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
                    children: [
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
            ),
            Text("data"),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Submit".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF2F4D84)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            side: BorderSide(color: Color(0xFF4CE5B1))),
                      )),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}

_onSendCounter(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Image.asset("assets/done.png"),
        Text(
          "Business Pro Application Sent",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
        ),
        Text(
          "Our sales team will be in touch \nwith you shortly, meanwhile you can use\n Merebility without Pro features ",
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Cancel ",
          style: TextStyle(color: Colors.black38, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: Text(
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
