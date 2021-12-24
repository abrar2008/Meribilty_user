import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/veiw/addteam.dart';

import 'package:meribilty/veiw/mydeliverypage.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Transitcargoform extends StatefulWidget {
  const Transitcargoform({Key? key}) : super(key: key);

  @override
  _TransitcargoformState createState() => _TransitcargoformState();
}
class _TransitcargoformState extends State<Transitcargoform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
              // height: 320,
               height: MediaQuery.of(context).size.height * 0.477,
              width: MediaQuery.of(context).size.width,
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


                const  Text(
                    "Transit cargo \n Important Documents",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xff4C6A97),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                     Text(
                          "Bill of lading (BL)",
                          style: const TextStyle(
                              color: Color(0xFF030303),
                              fontSize: 15,
                              ),
                        ),
                  Row(
                    children: [
                      InkWell(
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
            } else {
              // User canceled the picker
            }
          },
          child: Text("Upload",
                        style: TextStyle(color: Color(0xFFC8C7CC)),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC8C7CC),
                      size: 15,
                      )
                    ],
                  ),
                  
                  
                   ],
                 ),
               
               
                const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10, 
                  ),
                 
                    Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                     Text(
                          "Invoice",
                          style: const TextStyle(
                              color: Color(0xFF030303),
                              fontSize: 15,
                              ),
                        ),
                  Row(
                    children: [
                     InkWell(
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
            } else {
              // User canceled the picker
            }
          },
          child:
                      Text("Upload",
                        style: TextStyle(color: Color(0xFFC8C7CC)),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC8C7CC),
                      size: 15,
                      )
                    ],
                  ),
                  
                  
                   ],
                 ),
               const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10, 
                  ),
                 
                    Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   
                     Text(
                          "GD",
                          style: const TextStyle(
                              color: Color(0xFF030303),
                              fontSize: 15,
                              ),
                        ),
                  Row(
                    children: [
                     InkWell(
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();

            if (result != null) {
            } else {
              // User canceled the picker
            }
          },
          child:
                      Text("Upload",
                        style: TextStyle(color: Color(0xFFC8C7CC)),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC8C7CC),
                      size: 15,
                      )
                    ],
                  ),
                  
                  
                   ],
                 ),
                  const Divider(
                    height: 10,
                    
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  
                    GFButton(
                   borderShape: ShapeBorder.lerp(RoundedRectangleBorder(side: BorderSide.none, borderRadius:  BorderRadius.circular(10.0)), RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.circular(10.0)), 0.5),

                      fullWidthButton: true,
                      color: const Color(0xFF2F4D84),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      size: 40,
                      onPressed: () {
                        
                      },
                      text: "Submit Documents",
                      type: GFButtonType.solid,
                    ),
                  
                ],
              )

          ),
        ),
      ),
    );
  }
}
