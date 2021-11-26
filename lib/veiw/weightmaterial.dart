// ignore_for_file: dead_code


import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/portlogistics.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Weightmaterial extends StatefulWidget {
  const Weightmaterial({Key? key}) : super(key: key);

  @override
  _WeightmaterialState createState() => _WeightmaterialState();
}

class _WeightmaterialState extends State<Weightmaterial> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SlidingUpPanel(
        renderPanelSheet: false,
        minHeight: 350,
        panel:const floatingpanel(),
          body: Container(
          color: const Color(0xffF8F8F8),
        ),
      ),
      bottomNavigationBar: Container(
    
        color: Colors.white,
        padding:
            const EdgeInsets.only(top: 23, left: 23, right: 20, bottom: 20),
        child: GFButton(
          size: 40,
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
    bool _hasBeenPressed = false;
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
               const Text(
                          "How much material weights",
                          style: TextStyle(
                              color: Color(0xFF2F4D84),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                const SizedBox(
                height: 10,
              ),
              Image.asset("assets/arrow.png"),
              Column(
                children: state.selectmaterial.map( (e) {
                       return Column(
                         children: [
                         SizedBox(
            height: 90,
            child:
             GFListTile(
               
               onTap: (){
                 
               },
              color: _hasBeenPressed ? Colors.blue : Colors.white,
              title: Center(
                child: Column(
                  children: const [
                    SizedBox(
                        height: 14,
                    ),
                    Text(
                        "3 - 5 Tons",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                    ),
                  ],
                ),
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
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
          // const SizedBox(
          //   height: 10,
          // ),
          
          
          
          // SizedBox(
          //   height: 90,
          //   child: InkWell(
          //     onTap: () {},
          //     child: GFButton(
          //       color: 
          //       // _flag ? Colors.white :
          //       Colors.white,
          //       child: Center(
          //         child: Column(
          //           children: const [
          //             SizedBox(
          //               height: 10,
          //             ),
          //             Text(
          //               "1 - 3 Tons",
          //               style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 20,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       onPressed: () {
          //         setState(() {
          //         //  _flag = !_flag;
          //         });
          //       },
          //     ),
          //   ),
          // ),
          
          
          
          // const GFListTile(
          //   title: Center(
          //     child: Text(
          //       "5 - 7 Tons",
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 30,
          // ),
           
           
           
 



