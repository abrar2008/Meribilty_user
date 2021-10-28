import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/alert/gf_alert.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/floating_widget/gf_floating_widget.dart';
import 'package:getwidget/position/gf_position.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_alert_type.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/paymentmethod.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VeiwBirds extends StatefulWidget {
  const VeiwBirds({Key? key}) : super(key: key);

  @override
  _VeiwBirdsState createState() => _VeiwBirdsState();
}

class _VeiwBirdsState extends State<VeiwBirds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF2F4D84),
        title: Text(
          "Veiw Bids  ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.book,
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              ),
              decision(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget decision(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.white,
    child: Column(
      children: [
        Container(
          width: double.infinity,
          color: Color(0xff666666),
          child: Center(
            child: Text(
              AppLocalizations.of(context)!.bokd,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order No .00214 ",
              style: TextStyle(
                  color: Color(0xFF2F4D84), fontWeight: FontWeight.bold),
            ),
            Text(
              "09 Sep, 21 05:51 Pm",
              style: TextStyle(
                  color: Color(0xFF2F4D84), fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        GFButton(
          child: Container(
            color: Color(0xff242E42),
            child: Row(
              children: [
                Image.asset("assets/truk.png"),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      '1',
                    ),
                  ),
                )
              ],
            ),
          ),
          size: 60,
          color: Color(0xff242E42),
          textStyle: TextStyle(fontSize: 20),
          onPressed: () {},
          type: GFButtonType.solid,
          borderSide: BorderSide.none,
          position: GFPosition.end,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        GFButton(
          child: Container(
            color: Color(0xff242E42),
            child: Row(
              children: [
                Image.asset("assets/truk.png"),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Feet Container",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "5 Tons",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      '1',
                    ),
                  ),
                )
              ],
            ),
          ),
          size: 60,
          color: Color(0xff242E42),
          textStyle: TextStyle(fontSize: 20),
          onPressed: () {},
          type: GFButtonType.solid,
          borderSide: BorderSide.none,
          position: GFPosition.end,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        expand(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: GFButton(
                color: Color(0xFF2F4D84),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VeiwBirds(),
                      ));
                },
                text: "COD",
                shape: GFButtonShape.pills,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                child: Row(
              children: [
                Text(
                  "*",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 35,
                  ),
                ),
                Text(
                  "4.9",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            )),
            GFButton(
              color: Colors.black26,
              onPressed: () {},
              text: "Rs :200,000",
              shape: GFButtonShape.pills,
              textStyle: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        Container(
          child: Row(
            children: [
              GFButton(
                color: Color(0xffFF2D55),
                size: 50,
                onPressed: () {
                  _onOfferreject(context);
                },
                text: AppLocalizations.of(context)!.reject,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              GFButton(
                color: Color(0xff5AC8FA),
                onPressed: () {
                  _onVendorcounter(context);
                },
                text: AppLocalizations.of(context)!.count,
                size: 50,
                shape: GFButtonShape.square,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              GFButton(
                onPressed: () {
                  _onSendCounterAccept(context);
                },
                color: Color(0xFF2F4D84),
                text: AppLocalizations.of(context)!.acept,
                size: 50,
                shape: GFButtonShape.square,
                textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget expand(BuildContext context) {
  return ExpandableNotifier(
      child: Padding(
    padding: const EdgeInsets.all(10),
    child: Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.expend,
                      style: TextStyle(
                        color: Color(0xFF2F4D84),
                      ),
                    ),
                  )),
              collapsed: Text(
                "  ",
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ol.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pick Up location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/ma.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Drop off location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ol.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Empty Container Return",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GFButton(
                        color: Color(0xFF2F4D84),
                        onPressed: () {},
                        text: "Load",
                        shape: GFButtonShape.pills,
                      ),
                      Text("1 x Fork Lifter Rs. 3000  "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "DISTANCE",
                              style: TextStyle(
                                  color: Color(0xFF2F4D84),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "2000 km",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: Color(0xFF2F4D84),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "200 min",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  ));
}

_onSendCounter(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.countoffer,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
        ),
        Text(
          AppLocalizations.of(context)!.preparing,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        Text(
          "Rs 450.0000 ",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
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
          "Send",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}

_onSendCounterAccept(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.deal,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.preparing,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Rs 450.0000 ",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2F4D84)),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Reject ",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: Text(
          "Proceed",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Payment(),
            )),
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}

_reminder(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Text(
          "Reminder",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.limited,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Proceed",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}

_onVendorcounter(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.venderoffer,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.countoffer,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Rs 450.0000 ",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2F4D84)),
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: Text(
          "Reject ",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: Text(
          "Accept",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}

_onOfferreject(context) {
  Alert(
    type: AlertType.error,
    content: Column(
      children: <Widget>[
        Text(
          "Offer Rejected",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "You have rejected the offer your order detail are saved in your Profile",
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
    buttons: [
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

_onOfferrejectConform(context) {
  Alert(
    type: AlertType.error,
    content: Column(
      children: <Widget>[
        Text(
          AppLocalizations.of(context)!.oh,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        Text(
          "Offer Rejected",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.cancellation,
          style: TextStyle(color: Color(0xff8A8A8F)),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
    buttons: [
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
