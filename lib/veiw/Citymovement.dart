// ignore_for_file: camel_case_types, file_names, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:meribilty/veiw/loading_option.dart';
import 'package:meribilty/veiw/selectvehiclecity.dart';

import 'package:meribilty/veiw/timewait.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Citymovement_screen extends StatefulWidget {
  const Citymovement_screen({Key? key}) : super(key: key);

  @override
  _Citymovement_screenState createState() => _Citymovement_screenState();
}

class _Citymovement_screenState extends State<Citymovement_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 300,
        panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: SafeArea(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration.collapsed(
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: "Enter Location for post",
                ),
                // focusNode: value1.nodeTo,
                // autofocus: false,
                // controller: value1.addressTo,
                // onChanged: (String value) {
                //   placeBloc.searchPlace(value);
                // },
                // onTap: () {
                //   value1.inputTo = true;
                //   value1.inputFrom = false;
                //   print(value1.inputTo);
                // },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _scrollingList(ScrollController sc, BuildContext context) {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    // print("object");
  }

  return Container(
    padding: const EdgeInsets.all(10),
    child: Column( 
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.use,
                    style: const TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.bal,
                    style: const TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.white10,
                    inactiveTrackColor: Colors.black12,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rs  :350",
                    style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.est,
                    style: const TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Rs  3528 - 3644",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(
          height: 10,
          thickness: 2,
        ),
        GFButton(
          size: 60,
          color: const Color(0xFF2F4D84),
          onPressed: () {

            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Selectvehiclecity(),
                    ));

            // showMaterialModalBottomSheet(
            //   context: context,
            //   builder: (context) => SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         const SizedBox(
            //           height: 10,
            //         ),
            //         const Text(
            //           "Select Vehicle",
            //           style: TextStyle(
            //               color: Color(0xFF2F4D84),
            //               fontWeight: FontWeight.w500,
            //               fontSize: 25),
            //         ),

            //         GFListTile(
            //           avatar: GFAvatar(
            //             backgroundColor: Colors.white10,
            //             shape: GFAvatarShape.square,
            //             child: Image.asset(
            //               "assets/Path.png",
            //               // color: Colors.black
            //             ),
            //           ),
            //           title: const Text(
            //             "Truck",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //             ),
            //           ),
            //           icon: Row(
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               const Text(
            //                 "0",
            //                 style: TextStyle(fontSize: 25),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.remove,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
                   
            //        //
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         GFListTile(
            //           avatar: GFAvatar(
            //             backgroundColor: Colors.white10,
            //             shape: GFAvatarShape.square,
            //             child:
            //                 Image.asset("assets/Path.png", color: Colors.black),
            //           ),
            //           title: const Text(
            //             "Truck",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //             ),
            //           ),
            //           icon: Row(
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               const Text(
            //                 "0",
            //                 style: TextStyle(fontSize: 25),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.remove,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         GFListTile(
            //           avatar: GFAvatar(
            //             backgroundColor: Colors.white10,
            //             shape: GFAvatarShape.square,
            //             child:
            //                 Image.asset("assets/Path.png", color: Colors.black),
            //           ),
            //           title: const Text(
            //             "Truck",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //             ),
            //           ),
            //           icon: Row(
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               const Text(
            //                 "0",
            //                 style: TextStyle(fontSize: 25),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.remove,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         GFListTile(
            //           avatar: GFAvatar(
            //             backgroundColor: Colors.white10,
            //             shape: GFAvatarShape.square,
            //             child: Image.asset("assets/Path.png",
            //                 color: const Color(0xFF2F4D84)),
            //           ),
            //           title: const Text(
            //             "40 FT Container",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //             ),
            //           ),
            //           icon: Row(
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               const Text(
            //                 "0",
            //                 style: TextStyle(fontSize: 25),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.remove,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ), //
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         Container(
            //           color: const Color(0xFF2F4D84),
            //           child: GFListTile(
            //             avatar: GFAvatar(
            //               backgroundColor: Colors.white10,
            //               shape: GFAvatarShape.square,
            //               child: Image.asset("assets/Path.png",
            //                   color: Colors.white),
            //             ),
            //             title: const Text(
            //               "Truck 20 Wheels",
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 20,
            //               ),
            //             ),
            //             icon: Row(
            //               children: [
            //                 Container(
            //                   decoration: BoxDecoration(
            //                       color: const Color(0xFF2F4D84),
            //                       borderRadius: BorderRadius.circular(10)),
            //                   height: 30,
            //                   width: 30,
            //                   child: const Icon(
            //                     Icons.add,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //                 const SizedBox(
            //                   width: 5,
            //                 ),
            //                 const Text(
            //                   "0",
            //                   style: TextStyle(fontSize: 25),
            //                 ),
            //                 const SizedBox(
            //                   width: 5,
            //                 ),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                       color: const Color(0xFF2F4D84),
            //                       borderRadius: BorderRadius.circular(10)),
            //                   height: 30,
            //                   width: 30,
            //                   child: const Icon(
            //                     Icons.remove,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ), //
            //         ///
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         GFListTile(
            //           avatar: GFAvatar(
            //             backgroundColor: Colors.white10,
            //             shape: GFAvatarShape.square,
            //             child:
            //                 Image.asset("assets/Path.png", color: Colors.black),
            //           ),
            //           title: const Text(
            //             "Truck",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //             ),
            //           ),
            //           icon: Row(
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               const Text(
            //                 "0",
            //                 style: TextStyle(fontSize: 25),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.remove,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         GFListTile(
            //           avatar: GFAvatar(
            //             backgroundColor: Colors.white10,
            //             shape: GFAvatarShape.square,
            //             child:
            //                 Image.asset("assets/Path.png", color: Colors.black),
            //           ),
            //           title: const Text(
            //             "Truck",
            //             style: TextStyle(
            //               color: Colors.black,
            //               fontSize: 20,
            //             ),
            //           ),
            //           icon: Row(
            //             children: [
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.add,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               const Text(
            //                 "0",
            //                 style: TextStyle(fontSize: 25),
            //               ),
            //               const SizedBox(
            //                 width: 5,
            //               ),
            //               Container(
            //                 decoration: BoxDecoration(
            //                     color: const Color(0xFF2F4D84),
            //                     borderRadius: BorderRadius.circular(10)),
            //                 height: 30,
            //                 width: 30,
            //                 child: const Icon(
            //                   Icons.remove,
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const Divider(
            //           color: Colors.black54,
            //         ),
            //         GFButton(
            //           size: 60,
            //           color: const Color(0xFF2F4D84),
            //           onPressed: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) =>
            //                       const Citymovement_screen()),
            //             );
            //           },
            //           text: "Save & Contine ",
            //           textStyle:
            //               const TextStyle(fontSize: 25, color: Colors.white),
            //           type: GFButtonType.solid,
            //           shape: GFButtonShape.standard,
            //           blockButton: true,
            //         ),
            //       ],
            //     ),
            //   ),
            // );
         //
         
          },
          textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          text: AppLocalizations.of(context)!.sel,
          type: GFButtonType.solid,
          blockButton: true,
        ),
        const SizedBox(
          height: 20,
        ),
        GFButton(
          size: 60,
          color: const Color(0xFF2F4D84),
          textStyle: const TextStyle(fontSize: 17, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoadingOption()),
            );
          },
          text: AppLocalizations.of(context)!.load,
          type: GFButtonType.solid,
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
        Cargo(),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GFButton(
                color: Colors.white,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                size: 60,
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    // ignore: avoid_print
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Citymovement_screen(),
                        ));
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                },
                text: AppLocalizations.of(context)!.sche,
                type: GFButtonType.solid,
                borderSide:
                    const BorderSide(color: Color(0xFF2F4D84), width: 2),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 235,
                // padding: const EdgeInsets.all(5),
                // width: 250,
                child: GFButton(
                  fullWidthButton: true,
                  color: const Color(0xFF2F4D84),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  size: 60,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Timewait()),
                    );
                  },
                  text: AppLocalizations.of(context)!.book,
                  type: GFButtonType.solid,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        )
      ],
    ),
  );
}

class Cargo extends StatefulWidget {
  @override
  _CargoState createState() => _CargoState();
}

class _CargoState extends State<Cargo> {
  bool isChecked = false;
  bool isVisiable = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10,),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.insure),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF2F4D84),
                      borderRadius: BorderRadius.circular(15)),
                  height: 30,
                  width: 40,
                  child: Checkbox(
                    activeColor: const Color(0xFF2F4D84),
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                        isVisiable = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: isVisiable,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GFButton(
                color: Colors.white,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                size: 60,
                onPressed: () {},
                text: AppLocalizations.of(context)!.cargov,
                type: GFButtonType.solid,
                fullWidthButton: true,
                borderSide: const BorderSide(color: Colors.black, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
