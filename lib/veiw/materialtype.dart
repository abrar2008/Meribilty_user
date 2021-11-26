

// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/portlogistics.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Materialtype extends StatefulWidget {
  const Materialtype({Key? key}) : super(key: key);

  @override
  _MaterialtypeState createState() => _MaterialtypeState();
}

class _MaterialtypeState extends State<Materialtype> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SlidingUpPanel(
        renderPanelSheet: false,
        minHeight: 350,
        panel:const floatingpanel(),

        // panelBuilder: (ScrollController sc) => _scrollingList(sc, context),
        body: Container(
          color: const Color(0xffF8F8F8),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        child: GFButton(
          size: 50,
          color: const Color(0xFF2F4D84),                             
          onPressed: () {
            
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Portlogistics(),
                ));
          },
          text: "Save & Continue",
          type: GFButtonType.solid,
          textStyle: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),
          shape: GFButtonShape.standard,
          blockButton: true,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class floatingpanel extends StatefulWidget {
  const floatingpanel({ Key? key }) : super(key: key);

  @override
  _floatingpanelState createState() => _floatingpanelState();
}

// ignore: camel_case_types
class _floatingpanelState extends State<floatingpanel> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Consumer<LocaleProvider>(
            builder: (context ,state , child ){
            return Container(
              width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40.0,
                  color: Colors.black12,
                ),
              ]),
          margin: const EdgeInsets.all(5.0),
          child: Column(
            children: [
                const  SizedBox(height: 15,),
                Text(
                                  AppLocalizations.of(context)!.material,
                                  style: const TextStyle(
                                      color: Color(0xFF2F4D84),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
            
                const SizedBox(
                height: 10,
              ),
           Image.asset("assets/arrow.png"),
              Column(
                children: state.selectmatype.map( (e) {
                       return Column(
                         children: [
                         SizedBox(
            height: 90,
            child: GFListTile(
                    avatar: GFAvatar(
                    backgroundColor: Colors.white10,
                    size: 50,
                    // shape: GFAvatarShape.square,
                    child: Image.asset("assets/cement.png",),
                                ),

    
                                title:Column(
                                  children: [
                                      const SizedBox(height: 10,),
                                     Text(
                                        "${e.title}",
                                        style: const  TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                   
                                  ],
                                ),
                              ),
            
          ), 
                         ],
                       );
                }
               
              ).toList(),
              ),
            ],
          ));

            }
            
            
            
            )
            
            
            );
  }
}
         
        //  showMaterialModalBottomSheet(
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10.0),
        //             ),
        //             context: context,
        //             builder: (context) => Container(
        //                 height: 550.0,
        //                 color: Colors
        //                     .transparent, //could change this to Color(0xFF737373),
        //                 //so you don't have to change MaterialApp canvasColor
        //                 child: new Container(
        //                     decoration: new BoxDecoration(
        //                         color: Colors.white,
        //                         borderRadius: new BorderRadius.only(
        //                             topLeft: const Radius.circular(10.0),
        //                             topRight: const Radius.circular(10.0))),
        //                     child: SingleChildScrollView(
        //                         child: Column(
        //                       children: [
        //                         SizedBox(
        //                           height: 20,
        //                         ),
        //                         
        //                         const SizedBox(
        //                           height: 10,
        //                         ),
        //                         Image.asset("assets/arrow.png"),
        //                         InkWell(
        //                           onTap: () {},
        //                           child: GFListTile(
        //                             color: _hasBeenPressed
        //                                 ? Colors.blue
        //                                 : Colors.white,
        //                             avatar: GFAvatar(
        //                               backgroundColor: Colors.white10,
        //                               shape: GFAvatarShape.square,
        //                               child: Image.asset("assets/elect.png",
        //                                   color: Colors.black),
        //                             ),
        //                             title: const Text(
        //                               "Electronics",
        //                               style: TextStyle(
        //                                 color: Colors.black,
        //                                 fontSize: 20,
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                         GFListTile(
        //                           avatar: GFAvatar(
        //                             backgroundColor: Colors.white10,
        //                             shape: GFAvatarShape.square,
        //                             child: Image.asset("assets/cement.png",
        //                                 color: Colors.black),
        //                           ),
        //                           title: const Text(
        //                             "Cement",
        //                             style: TextStyle(
        //                               color: Colors.black,
        //                               fontSize: 20,
        //                             ),
        //                           ),
        //                         ),
        //                         GFListTile(
        //                           avatar: GFAvatar(
        //                             backgroundColor: Colors.white10,
        //                             shape: GFAvatarShape.square,
        //                             child: Image.asset("assets/elect.png",
        //                                 color: Colors.black),
        //                           ),
        //                           title: const Text(
        //                             "Electronics",
        //                             style: TextStyle(
        //                               color: Colors.black,
        //                               fontSize: 20,
        //                             ),
        //                           ),
        //                         ),
        //                         GFListTile(
        //                           avatar: GFAvatar(
        //                             backgroundColor: Colors.white10,
        //                             shape: GFAvatarShape.square,
        //                             child: Image.asset("assets/cement.png",
        //                                 color: Colors.black),
        //                           ),
        //                           title: const Text(
        //                             "Cement",
        //                             style: TextStyle(
        //                               color: Colors.black,
        //                               fontSize: 20,
        //                             ),
        //                           ),
        //                         ),
                               
        //                         //

        //                         GFButton(
        //                           size: 60,
        //                           color: const Color(0xFF2F4D84),
        //                           onPressed: () {},
        //                           child: Text(
        //                             AppLocalizations.of(context)!.save,
        //                             style: const TextStyle(fontSize: 25),
        //                           ),
        //                           type: GFButtonType.solid,
        //                           shape: GFButtonShape.standard,
        //                           blockButton: true,
        //                         ),
        //                       ],
        //                     )))));