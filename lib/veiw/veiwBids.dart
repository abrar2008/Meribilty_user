// ignore_for_file: unused_element, file_names, sized_box_for_whitespace

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/position/gf_position.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/veiw/paymentmethod.dart';
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
        backgroundColor: const Color(0xFF2F4D84),
        title: const Text(
          "Veiw Bids  ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
           const SizedBox(height: 10,),  
            Center(
              child: Text(
                AppLocalizations.of(context)!.bookv,
                style: const TextStyle(color: Color(0xffC8C7CC), fontSize: 15),
              ),
            ),
            decision(context),
             const  SizedBox(height: 10,),  
          ],
        ),
      ),
    );
  }
}

Widget decision(BuildContext context) {
  return Container(
     width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        )),
    child: Column(
      children: [
        Container(
           width: MediaQuery.of(context).size.width,
          height: 20,
          decoration: const BoxDecoration(
              color: Color(0xff666666),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              )),
          child: Center(
            child: Text(
              AppLocalizations.of(context)!.bokd,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Order No .00214 ",
                style: TextStyle(
                  fontSize: 15,
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.bold),
              ),
              Text(
                "09 Sep, 21 05:51 Pm",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF2F4D84), fontWeight: FontWeight.bold),
              ),
              // SizedBox(width:9,),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius:  BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(0.0)), 0.5),
          
          child: Container(
            color: const Color(0xff242E42),
            child: Row(
              children: [
                Image.asset("assets/truk.png"),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "20 Feet Container",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "5 Tons",
                      style: TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                    )
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    style: const ButtonStyle(),
                    onPressed: () {},
                    child: const Text(
                      '1',
                    ),
                  ),
                )
              ],
            ),
          ),
          size: 60,
          color: const Color(0xff242E42),
          textStyle: const TextStyle(fontSize: 20),
          onPressed: () {},
          type: GFButtonType.solid,
          borderSide: BorderSide.none,
          position: GFPosition.end,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius:  BorderRadius.circular(0.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(10.0)), 0.5),

          child: Container(
            color: const Color(0xff242E42),
            child: Row(
              children: [
                Image.asset("assets/truk.png"),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "20 Feet Container",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "5 Tons",
                      style: TextStyle(fontSize: 20, color: Color(0xffC8C7CC)),
                    )
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    style: const ButtonStyle(),
                    onPressed: () {},
                    child: const Text(
                      '1',
                    ),
                  ),
                )
              ],
            ),
          ),
          size: 60,
          color: const Color(0xff242E42),
          textStyle: const TextStyle(fontSize: 20),
          onPressed: () {},
          type: GFButtonType.solid,
          borderSide: BorderSide.none,
          position: GFPosition.end,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        expand(context),
        Container(
          padding: const EdgeInsets.only(left: 15),
            width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: GFButton(
                  color: const Color(0xFF2F4D84),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VeiwBirds(),
                        ));
                  },
                  text: "COD",
                  shape: GFButtonShape.pills,
                  textStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: const [
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
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              GFButton(
              color: const Color(0xffF7F7F7),   
                onPressed: () {},
                text: "  Rs :200,000  ",
                shape: GFButtonShape.pills,
                textStyle: const TextStyle(fontSize: 17, color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius:  BorderRadius.circular(0.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(10.0)), 0.5),

              shape: GFButtonShape.standard,
              color: const Color(0xffFF2D55),
              size: 50,
              onPressed: () {
                _onOfferreject(context);
              },
              text: AppLocalizations.of(context)!.reject,
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GFButton(
                fullWidthButton: true,
                color: const Color(0xff5AC8FA),
                onPressed: () {
                  _onVendorcounter(context);
                },
                text: AppLocalizations.of(context)!.count,
                size: 50,
                shape: GFButtonShape.square,
                textStyle:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GFButton(
             borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius:  BorderRadius.circular(0.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(10.0)), 0.5),

                onPressed: () {
                  _onSendCounterAccept(context);
                },
                color: const Color(0xFF2F4D84),
                text: AppLocalizations.of(context)!.acept,
                size: 50,
                shape: GFButtonShape.square,
                textStyle:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
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
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.expend,
                      style: const TextStyle(
                        color: Color(0xFF2F4D84),
                      ),
                    ),
                  )),
              collapsed: const Text(
                "  ",
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ol.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Pick Up location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/ma.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Drop off location",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/Ol.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Empty Container Return",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GFButton(
                        color: const Color(0xFF2F4D84),
                        onPressed: () {},
                        text: "Load",
                        shape: GFButtonShape.pills,
                      ),
                      const Text("1 x Fork Lifter Rs. 3000  "),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
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
                      Row(
                        children: const [
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
                      ),
                    ],
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
         const SizedBox(height: 10,),
        Text(
          AppLocalizations.of(context)!.countoffer,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
        ),
        Text(
          AppLocalizations.of(context)!.preparing,
          style: const TextStyle(color: Color(0xff8A8A8F)),
        ),
        const Divider(
          height: 2,
          color: Colors.black,
        ),
        const Text(
          "Rs 40.0000 ",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff5AC8FA)),
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
        const SizedBox(height: 10,),
        Text(
          AppLocalizations.of(context)!.deal,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.preparing,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Color(0xff8A8A8F),
          fontSize: 15,

          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          height: 2,
          color: Colors.black38,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Rs 40.0000 ",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2F4D84),
              fontSize: 17,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 2,
          color: Colors.black38,
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
          "Reject ",
          style: TextStyle(color: Colors.red, fontSize: 17,
          fontWeight: FontWeight.w500
          ),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: const Text(
          "Proceed",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 17,
          fontWeight: FontWeight.w500
          ),
        ),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Payment(),
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
        const Text(
          "Reminder",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.limited,
          style: const TextStyle(color: Color(0xff8A8A8F)),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
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
          AppLocalizations.of(context)!.countof,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff446394)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.countoffer,
          textAlign: TextAlign.center,

          style: const TextStyle(color: Color(0xff8A8A8F),
          fontSize: 15
          ),
        ),
      const Divider(
          height: 2,
          color: Colors.black38,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Rs 450.0000 ",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2F4D84),
              fontSize: 19
              ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          height: 2,
          color: Colors.black38,
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
          "Cancel",
          style: TextStyle(color: Color(0xffC8C7CC), fontSize: 17,
          fontWeight: FontWeight.w500
          ),
          
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
     
   
      DialogButton(
        child: const Text(
          "Send",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 17,
          fontWeight: FontWeight.bold
          
          ),
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
    
    content: Column(
      children:  <Widget>[
            const SizedBox(height: 10,),
        Image.asset("assets/reject.png"),
        const SizedBox(height: 10,),
        const Text(
          "Offer Rejected",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff446394)),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          
          "You have rejected the offer \nYour order detail are saved in your profile",
          textAlign: TextAlign.center,
          
          style: TextStyle(color: Color(0xff8A8A8F),
          fontSize: 15
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          height: 10,
          color: Colors.black38,
        ),
      ],
    ),
    buttons: [
      DialogButton(
        child: const Text(
          "Done",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 17,fontWeight: FontWeight.bold),
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
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const Text(
          "Offer Rejected",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.cancellation,
          style: const TextStyle(color: Color(0xff8A8A8F)),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
    buttons: [
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
      