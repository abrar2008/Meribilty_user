import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:meribilty/veiw/mainProfile.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Timewait extends StatefulWidget {
  const Timewait({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TimewaitState();
  }
}

class TimewaitState extends State<Timewait> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const MainProfile()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final CountdownController _controller =
        CountdownController(autoStart: true);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     GFButton(
      //       onPressed: () {},
      //       text: "primary",
      //       size: GFSize.SMALL,
      //     ),
      //   ],
      // ),
      body: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF2F4D84),
                image: DecorationImage(
                    image: AssetImage('assets/loading.png'), fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              _oncancel(context);
                            },
                            child: const Text(
                              "Cancel Request",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 490,
                  ),
                  SizedBox(
                    width: double.infinity,
                    // alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.thank,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03DE73),
                        ),
                      ),
                    ),
                  ),
                  Countdown(
                    controller: _controller,
                    seconds: 60,
                    build: (_, double time) => Text(
                      time.toString(),
                      style: const TextStyle(
                          fontSize: 50, color: Color(0xFF03DE73)),
                    ),
                    interval: const Duration(milliseconds: 100),
                    onFinished: () {},
                  ),
                  const SizedBox(
                    width: double.infinity,
                    // alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        "Minutes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF03DE73),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
_oncancel(context) {
  Alert(
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[


         Text("Cancellation Reason",
         style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 18
         ),
        ),
         
          SizedBox(height: 10,),     
        
         Text("Price is too high",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color:  Colors.black38,),
         
          Text("Driver was impolite",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),

        SizedBox(height: 5,),
         Divider(height: 10,color:  Colors.black38,),
                 
         Text("Driver is Cancel the request ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black26,),


          Text("I waited to long ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black38,),

           Text("Driver is not showing  ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black38,),


      Text("Couldnt contact the driver ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black38,),

         
            Text("Difficult to communicate with the Driver ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black38,),

         
            Text("Driver is too far away  ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black38,),
           

       
            Text("it took too long to find a driver  ",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18
         ),
        ),
         SizedBox(height: 5,),
         Divider(height: 10,color: Colors.black38,),
 


      ],
    ),
    // buttons: [
    //   DialogButton(
    //     child: const Text(
    //       "Reject ",
    //       style: TextStyle(color: Colors.red, fontSize: 20),
    //     ),
    //     onPressed: () => Navigator.pop(context),
    //     color: Colors.white,
    //   ),
    //   DialogButton(
    //     child: const Text(
    //       "Accept",
    //       style: TextStyle(color: Color(0xFF2F4D84), fontSize: 20),
    //     ),
    //     onPressed: () => Navigator.pop(context),
    //     color: Colors.white,
    //   )
    // ],
    context: context,
  ).show();
}
