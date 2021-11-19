import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/portlogistics.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnLoadingport extends StatefulWidget {
  const UnLoadingport({Key? key}) : super(key: key);

  @override
  _UnLoadingportState createState() => _UnLoadingportState();
}

class _UnLoadingportState extends State<UnLoadingport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
          renderPanelSheet: false,
          minHeight: 400,
          maxHeight: 800,
          panel:const  Floating(),
            body:Container(
          color: const Color(0xffF8F8F8),
        ), 
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GFButton(
              size: 60,
              color: const Color(0xFF2F4D84),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Portlogistics()),
                );
              },
              child: Text(
                AppLocalizations.of(context)!.save,
                style: const TextStyle(fontSize: 17),
              ),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
          ),
        ),
      ),

      
    );
  }
}

class Floating extends StatelessWidget {
  const Floating({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:    Card(

             child: Container(
             
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
      boxShadow: [
        BoxShadow(
          blurRadius: 10.0,
          color: Colors.grey,
        ),
      ]
    ),
   
               child: Column(
                 children: [
                const  SizedBox(height: 12,),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children:  [  
                      const    SizedBox(width: 30,),
                        InkWell(
                          onTap: (){
                             Navigator.pop(context);
                          },
                          child: const  Icon(Icons.arrow_back_ios )),
                        const  SizedBox(width: 30,),
                      const  Text("Select  UnLoading Options " ,
                                            style: TextStyle(
                        fontSize: 20,
                         fontWeight: FontWeight.bold,
                       letterSpacing: 1,
                        color:  Color(0xFF2F4D84),

                        
                                            ),
                       
                       )
                      ],
                    ),
                  ), 
                  const SizedBox(height: 10,),
              Container(
                color: Colors.white,
                child: Center(child: Image.asset("assets/arrow.png"))),
                   const SizedBox(height: 10,),
                   Consumer<LocaleProvider>(
                    builder: (context ,state , child ){
                    return Column(
                      
                      children: [
                        // SizedBox(height: 200,),
                        Column(
                          children: state.unloadport.map( (e) {
                          return Container(
                            
                            color: e.count>=1 ? const Color(0xFF2F4D84) : Colors.transparent,
                            child: GFListTile(
                                avatar: GFAvatar(
                                    backgroundColor:Colors.transparent,
                                  shape: GFAvatarShape.square,
                                  size: 40,
                                  child:  e.count >=1 ? Image.asset(
                              "assets/twhite.png",
                              // color: Colors.black
                            ):Image.asset(
                              "assets/Shape.png",
                              // color: Colors.black
                            ),
                                ),
                                title: Column(
                                  children: [
                                    Text("Labour",
                                    style: TextStyle(
                                      color: e.count>=1 ? Colors.white : Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                    
                                    ),
                                    ),
                                 const SizedBox(height: 10,),
                                  ],
                                ),
                                
                                subTitle:e.count>=1 ? Text(" Rs 1000",
                                style: TextStyle(
                                  color: e.count>=1 ? Colors.white :  const Color(0xffC8C7CC),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                
                                 
                                
                                ),
                                
                                ) : Text("Rs 1000 per hour/Minimum",
                                style: TextStyle(
                                  color: e.count>=1 ? Colors.white : const  Color(0xffC8C7CC),
                                fontSize: 13,
                                
                                
                                ),
                                ),
                                icon: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: e.count>=1 ? Colors.white : const Color(0xFF2F4D84),
                                              borderRadius: BorderRadius.circular(10)),
                                          height: 25,
                                          width: 30,
                                          child: GestureDetector(
                                            onTap: () {
                                              context.read<LocaleProvider>().increloadport(e);
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: e.count>=1 ? Colors.black : Colors.white,
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
                                              color:  e.count>=1 ? Colors.white :  const Color(0xFF2F4D84),
                                              borderRadius: BorderRadius.circular(10)),
                                          height: 25,
                                          width: 30,
                                          child: GestureDetector(
                                            onTap: () {
                                             context.read<LocaleProvider>().decunloadport(e);
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color:  e.count>=1 ? Colors.black : Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      height: 30,
                                    )
                                  ],
                                )),
                          );
                       
                          }
                          ).toList(),
                        ),
                    
                    
                    //
                      ],
                    );
                        
                    }
                    ),
                 ],
               ),
             ),
           ),      
    );
  }
}










/*

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/citymovement.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnLoadingOption extends StatefulWidget {
  const UnLoadingOption({Key? key}) : super(key: key);

  @override
  _UnLoadingOptionState createState() => _UnLoadingOptionState();
}

class _UnLoadingOptionState extends State<UnLoadingOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
          renderPanelSheet: false,
          minHeight: 400,
          maxHeight: 800,
          panel:const  floating(),
            body:Container(
          color: const Color(0xffF8F8F8),
        ), 
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GFButton(
              size: 60,
              color: const Color(0xFF2F4D84),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Citymovement_screen()),
                );
              },
              child: Text(
                AppLocalizations.of(context)!.save,
                style: const TextStyle(fontSize: 17),
              ),
              type: GFButtonType.solid,
              shape: GFButtonShape.standard,
              blockButton: true,
            ),
          ),
        ),
      ),
    );
  }
}

// Widget _floatingPanel(context) {
//   return Container(
//       decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(194.0),
//             topRight: Radius.circular(194.0),
//           ),
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20.0,
//               color: Colors.grey,
//             ),
//           ]),
//       margin: const EdgeInsets.all(10.0),
//       child: Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                 Icons.keyboard_arrow_left_rounded,
//                 color: Colors.black,
//                 size: 45,
//               ),
//             ),
//             backgroundColor: Colors.white,
//             title: Column(
//               children: [
//                 Text(
//                   AppLocalizations.of(context)!.unloading,
//                   style: const TextStyle(
//                     color: Color(0xFF2F4D84),
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//                 // const SizedBox(
//                 //   height: 10,
//                 // ),
//               ],
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                     color: Colors.white,
//                     child: Center(child: Image.asset("assets/arrow.png"))),
//                 GFListTile(
//                     avatar: const GFAvatar(
//                       backgroundImage: AssetImage("assets/truk.png"),
//                       shape: GFAvatarShape.square,
//                       size: 40,
//                     ),
//                     titleText: 'Labor',
//                     subTitleText: 'Rs 1000 per hour/Minimum',
//                     icon: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                   color: const Color(0xFF2F4D84),
//                                   borderRadius: BorderRadius.circular(10)),
//                               height: 30,
//                               width: 30,
//                               child: InkWell(
//                                 onTap: () {
//                                   // provider.increasement();
//                                 },
//                                 child: const Icon(
//                                   Icons.add,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             const Text(
//                               "20",
//                               style: TextStyle(fontSize: 25),
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                   color: const Color(0xFF2F4D84),
//                                   borderRadius: BorderRadius.circular(10)),
//                               height: 30,
//                               width: 30,
//                               child: const Icon(
//                                 Icons.remove,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 30,
//                         )
//                       ],
//                     )),
//                 Container(
//                   color: const Color(0xFF2F4D84),
//                   child: GFListTile(
//                       avatar: const GFAvatar(
//                         foregroundColor: Color(0xFF2F4D84),
//                         backgroundImage: AssetImage(
//                           "assets/Path.png",
//                         ),
//                         shape: GFAvatarShape.square,
//                       ),
//                       title: const Text(
//                         "Crane",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                         ),
//                       ),
//                       subTitle: const Text(
//                         "Rs 1000 ",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                         ),
//                       ),
//                       icon: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 height: 30,
//                                 width: 30,
//                                 child: const Icon(Icons.add),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               const Text(
//                                 "1",
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 height: 30,
//                                 width: 30,
//                                 child: const Center(
//                                   child: Icon(
//                                     Icons.remove,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           const Text(
//                             "Rs 1000 ",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       )),
//                 ),
//                 Container(
//                   color: const Color(0xFF2F4D84),
//                   child: GFListTile(
//                       avatar: const GFAvatar(
//                         foregroundColor: Color(0xFF2F4D84),
//                         backgroundImage: AssetImage(
//                           "assets/Path.png",
//                         ),
//                         shape: GFAvatarShape.square,
//                       ),
//                       title: const Text(
//                         "Crane",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                         ),
//                       ),
//                       subTitle: const Text(
//                         "Rs 1000 ",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                         ),
//                       ),
//                       icon: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 height: 30,
//                                 width: 30,
//                                 child: const Icon(
//                                   Icons.add,
//                                 ),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               const Text(
//                                 "1",
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 height: 30,
//                                 width: 30,
//                                 child: const Center(
//                                   child: Icon(
//                                     Icons.remove,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           const Text(
//                             "Rs 1000 ",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       )),
//                 ),
//                 Container(
//                   color: const Color(0xFF2F4D84),
//                   child: GFListTile(
//                       avatar: const GFAvatar(
//                         foregroundColor: Color(0xFF2F4D84),
//                         backgroundImage: AssetImage(
//                           "assets/Path.png",
//                         ),
//                         shape: GFAvatarShape.square,
//                       ),
//                       title: const Text(
//                         "Crane",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                         ),
//                       ),
//                       subTitle: const Text(
//                         "Rs 1000 ",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                         ),
//                       ),
//                       icon: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 height: 30,
//                                 width: 30,
//                                 child: const Icon(Icons.add),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               const Text(
//                                 "1",
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(10)),
//                                 height: 30,
//                                 width: 30,
//                                 child: const Center(
//                                   child: Icon(
//                                     Icons.remove,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           const Text(
//                             "Rs 1000 ",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                             ),
//                           ),
//                         ],
//                       )),
//                 ),
//                 GFListTile(
//                     avatar: const GFAvatar(
//                       backgroundImage: AssetImage("assets/truk.png"),
//                       shape: GFAvatarShape.square,
//                       size: 40,
//                     ),
//                     titleText: 'Labor',
//                     subTitleText: 'Rs 1000 per hour/Minimum',
//                     icon: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                   color: const Color(0xFF2F4D84),
//                                   borderRadius: BorderRadius.circular(10)),
//                               height: 30,
//                               width: 30,
//                               child: const Icon(
//                                 Icons.add,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             const Text(
//                               "0",
//                               style: TextStyle(fontSize: 25),
//                             ),
//                             const SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                   color: const Color(0xFF2F4D84),
//                                   borderRadius: BorderRadius.circular(10)),
//                               height: 30,
//                               width: 30,
//                               child: const Center(
//                                 child: Icon(
//                                   Icons.remove,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 30,
//                         )
//                       ],
//                     )),
//               ],
//             ),
//           )));
// }








/*
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:meribilty/veiw/unloading.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadingOption extends StatefulWidget {
  const LoadingOption({Key? key}) : super(key: key);

  @override
  _LoadingOptionState createState() => _LoadingOptionState();
}

class _LoadingOptionState extends State<LoadingOption> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SlidingUpPanel(
          renderPanelSheet: false,
          minHeight: 400,
          maxHeight: 800,
          panel:floating(),
            body:Container(
          color: const Color(0xffF8F8F8),
        ), 
    // 
    // Container(
    //           decoration: BoxDecoration(
    //   color:Color(0xffF8F8F8),
      
    //   boxShadow: const [
    //     BoxShadow(
    //       blurRadius: 30.0,
    //       color: Colors.grey,
    //     ),
    //   ]
    // ),
    // child: Container(
    //     decoration: BoxDecoration(
    //   color: Colors.white,
      
    //   boxShadow: const [
    //     BoxShadow(
    //       blurRadius: 30.0,
    //       color: Colors.grey,
    //     ),
    //   ]
    // ),
    // ),
    //         ),
        
       
//       
       
        ),
       
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60,
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: GFButton(
                size: 60,
                color: Color(0xFF2F4D84),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UnLoadingOption()),
                  );
                },
                child: Text(
                  AppLocalizations.of(context)!.next,
                  style: TextStyle(fontSize: 17),
                ),
                type: GFButtonType.solid,
                shape: GFButtonShape.standard,
                blockButton: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/
 

// ignore: camel_case_types



/*















//   return Container(
//     decoration: BoxDecoration(
//         color: Color(0xffFFFFFF),
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(400.0),
//           topRight: Radius.circular(400.0),
//         ),
//         boxShadow: const [
//           BoxShadow(
//             blurRadius: 30.0,
//             color: Colors.white,
//           ),
//         ]),
//     margin: const EdgeInsets.all(10.0),
//     child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(content);
//             },
//             icon: Icon(
//               Icons.keyboard_arrow_left_rounded,
//               color: Colors.black,
//               size: 45,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           title: Column(
//             children: [
//               Text(
//                 AppLocalizations.of(content)!.loading,
//                 style: TextStyle(
//                   color: Color(0xFF2F4D84),
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//               // SizedBox(
//               //   height: 10,
//               // ),
//             ],
//           ),
//         ),
//         body: Container()));
// }
               //


// Container(
//               child: Column(
//             children: [
//               Container(
//                   color: Colors.white,
//                   child: Center(child: Image.asset("assets/arrow.png"))),

            //  Container(
            //     color: Color(0xFF2F4D84),
            //     child: GFListTile(
            //         avatar: GFAvatar(
            //           foregroundColor: Color(0xFF2F4D84),
            //           backgroundImage: AssetImage(
            //             "assets/Path.png",
            //           ),
            //           shape: GFAvatarShape.square,
            //         ),
            //         title: Text(
            //           "Crane",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //           ),
            //         ),
            //         subTitle: Text(
            //           "Rs 1000 ",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //           ),
            //         ),
            //         icon: Container(
            //           child: Column(
            //             children: [
            //               Row(
            //                 children: [
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     height: 30,
            //                     width: 30,
            //                     child: Icon(Icons.add),
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     "1",
            //                     style:
            //                         TextStyle(fontSize: 25, color: Colors.white),
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     height: 30,
            //                     width: 30,
            //                     child: Column(
            //                       children: const [
            //                         Center(
            //                           child: Icon(
            //                             Icons.remove,
            //                             color: Colors.black,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Rs 1000 ",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )),
            //   ),
            //   Container(
            //     color: Color(0xFF2F4D84),
            //     child: GFListTile(
            //         avatar: GFAvatar(
            //           foregroundColor: Color(0xFF2F4D84),
            //           backgroundImage: AssetImage(
            //             "assets/Path.png",
            //           ),
            //           shape: GFAvatarShape.square,
            //         ),
            //         title: Text(
            //           "Crane",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //           ),
            //         ),
            //         subTitle: Text(
            //           "Rs 1000 ",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //           ),
            //         ),
            //         icon: Container(
            //           child: Column(
            //             children: [
            //               Row(
            //                 children: [
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     height: 30,
            //                     width: 30,
            //                     child: Icon(Icons.add),
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     "1",
            //                     style:
            //                         TextStyle(fontSize: 25, color: Colors.white),
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     height: 30,
            //                     width: 30,
            //                     child: Column(
            //                       children: const [
            //                         Center(
            //                           child: Icon(
            //                             Icons.remove,
            //                             color: Colors.black,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Rs 1000 ",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )),
            //   ),
            //   Container(
            //     color: Color(0xFF2F4D84),
            //     child: GFListTile(
            //         avatar: GFAvatar(
            //           foregroundColor: Color(0xFF4CE5B1),
            //           backgroundImage: AssetImage(
            //             "assets/Path.png",
            //           ),
            //           shape: GFAvatarShape.square,
            //         ),
            //         title: Text(
            //           "Crane",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //           ),
            //         ),
            //         subTitle: Text(
            //           "Rs 1000 ",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //           ),
            //         ),
            //         icon: Container(
            //           child: Column(
            //             children: [
            //               Row(
            //                 children: [
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     height: 30,
            //                     width: 30,
            //                     child: Icon(Icons.add),
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Text(
            //                     "1",
            //                     style:
            //                         TextStyle(fontSize: 25, color: Colors.white),
            //                   ),
            //                   SizedBox(
            //                     width: 5,
            //                   ),
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(10)),
            //                     height: 30,
            //                     width: 30,
            //                     child: Column(
            //                       children: const [
            //                         Icon(
            //                           Icons.remove,
            //                           color: Colors.black,
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Rs 1000 ",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )),
            //   ),
  //           ],
  //         )),
  //       )),
  // );
// }
*/
*/
     
