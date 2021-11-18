import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/Citymovement.dart';
import 'package:provider/provider.dart';

class Selectvehiclecity extends StatefulWidget {
  const Selectvehiclecity({Key? key}) : super(key: key);

  @override
  _SelectvehiclecityState createState() => _SelectvehiclecityState();
}

class _SelectvehiclecityState extends State<Selectvehiclecity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<LocaleProvider>(
            builder: (context ,state , child ){
            return  Column(

              
              children: [
                  const SizedBox(height: 30,),
                 const Text(
                        "Select Vehicle",
                        style: TextStyle(
                            color: Color(0xFF2F4D84),
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                Column(
                  children: state.selectvichele.map( (e) {
                  return Container(
                  
                    color: e.count>=1 ? const Color(0xFF2F4D84) : Colors.transparent,
                    child:          GFListTile(
                          avatar: GFAvatar(
                            backgroundColor:Colors.transparent,
                            shape: GFAvatarShape.square,
                            child: e.count >=1 ? Image.asset(
                              "assets/twhite.png",
                              // color: Colors.black
                            ):Image.asset(
                              "assets/Shape.png",
                              // color: Colors.black
                            ),
                            
                            
                          ),
                          title: Text(
                            "Truck",
                            style: TextStyle(
                              color: e.count>=1 ? Colors.white : Colors.black,
                              fontSize: 17,
                            ),
                          ),
                          subTitle: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: e.count>=1 ? Colors.white :  const Color(0xFF2F4D84),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: 25,
                                    width: 30,
                                    child: InkWell(
                                       onTap: (){
                                         context.read<LocaleProvider>().invechechle(e);
                                       },
                                      child: Icon(
                                        Icons.add,
                                        color:  e.count>=1 ? Colors.black : Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "${e.count}",
                                    style: TextStyle(fontSize: 25,
                                    
                                    color: e.count>=1 ? Colors.white : Colors.black,
                                    ),
                                    
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: e.count>=1 ? Colors.white :  const Color(0xFF2F4D84),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: 25,
                                    width: 30,
                                    child: InkWell(
                                      onTap:(){
                                             context.read<LocaleProvider>().decvehicle(e);
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color:  e.count>=1 ? Colors.black :Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          icon: 
                          
                          Text(
                                "5 Ton Limit",
                                style: TextStyle(
                                 color: e.count >=1 ? Colors.white :Colors.black,  
                                 fontSize: 15,                               
                                
                                ),
                              )
                 
                  ));
                 
                 
                 
                  }
                  ).toList(),
                ),
            
             
                 GFButton(
                        size: 40,
                        color: const Color(0xFF2F4D84),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Citymovement_screen()),
                          );
                        },
                        text: "Save & Contine ",
                        textStyle: const TextStyle(fontSize: 17),
                        type: GFButtonType.solid,
                        shape: GFButtonShape.standard,
                        blockButton: true,
                      ),
                    
              
              
              //
              ],
            );
                
            }
            ));
     
     //
     
  }
}
