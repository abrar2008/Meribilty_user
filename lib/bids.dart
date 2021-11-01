import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:meribilty/addteam.dart';

import 'package:meribilty/mydeliverypage.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Bids extends StatefulWidget {
  const Bids({Key? key}) : super(key: key);

  @override
  _BidsState createState() => _BidsState();
}

class _BidsState extends State<Bids> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF2F4D84),
        title: const Text(
          "Veiw Bids ",
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
              height: 400,
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.contact,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      showMaterialModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          context: context,
                          builder: (context) => SingleChildScrollView(
                                  child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Team Members",
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
                                        backgroundImage:
                                            AssetImage("assets/hum.png"),
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
                                        backgroundImage:
                                            AssetImage("assets/hum.png"),
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
                                        backgroundImage:
                                            AssetImage("assets/hum.png"),
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
                                        backgroundImage:
                                            AssetImage("assets/hum.png"),
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
                    },
                    child: Text(
                      AppLocalizations.of(context)!.existing,
                      style: const TextStyle(
                          color: Color(0xFF2F4D84),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddTeam(),
                          ));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.addnew,
                      style: const TextStyle(
                          color: Color(0xFF2F4D84), fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(AppLocalizations.of(context)!.tranfe),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      _biltyaccepted(context);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.manage,
                      style: const TextStyle(
                          color: Color(0xFF2F4D84), fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(AppLocalizations.of(context)!.tranfe)
                ],
              )),
        ),
      ),
    );
  }
}

// Widget _scrollingList(ScrollController sc) {
//   return SingleChildScrollView(
//       child: Column(
//     children: [
//       const SizedBox(
//         height: 10,
//       ),
//       const Text(
//         "Team Member",
//         style: TextStyle(
//           fontSize: 20,
//           color: Color(0xFF2F4D84),
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       const SizedBox(
//         height: 10,
//       ),
//       Image.asset("assets/arrow.png"),
//       GFListTile(
//           avatar: const GFAvatar(
//             backgroundImage: AssetImage("assets/hum.png"),
//             shape: GFAvatarShape.circle,
//             size: 40,
//           ),
//           titleText: 'Ashfaq Alam ',
//           icon: Column(
//             children: const [
//               Text(
//                 "03223384476",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           )),
//       GFListTile(
//           avatar: const GFAvatar(
//             backgroundImage: AssetImage("assets/hum.png"),
//             shape: GFAvatarShape.circle,
//             size: 40,
//           ),
//           titleText: 'Ashfaq Alam ',
//           icon: Column(
//             children: const [
//               Text(
//                 "03223384476",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           )),
//       GFListTile(
//           avatar: const GFAvatar(
//             backgroundImage: AssetImage("assets/hum.png"),
//             shape: GFAvatarShape.circle,
//             size: 40,
//           ),
//           titleText: 'Ashfaq Alam ',
//           icon: Column(
//             children: const [
//               Text(
//                 "03223384476",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           )),
//       GFListTile(
//           avatar: const GFAvatar(
//             backgroundImage: AssetImage("assets/hum.png"),
//             shape: GFAvatarShape.circle,
//             size: 40,
//           ),
//           titleText: 'Ashfaq Alam ',
//           icon: Column(
//             children: const [
//               Text(
//                 "03223384476",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           )),
//     ],
//   ));
// }

_biltyaccepted(context) {
  Alert(
    content: Column(
      children: <Widget>[
        Image.asset("assets/done.png"),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Bilty Accepted",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff242E42)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppLocalizations.of(context)!.track,
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
          "Cancel ",
          style: TextStyle(color: Color(0xffC8C7CC), fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
      DialogButton(
        child: const Text(
          "Done",
          style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
        ),
        onPressed: () => {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Mydeliverypage()))
        },
        color: Colors.white,
      )
    ],
    context: context,
  ).show();
}
