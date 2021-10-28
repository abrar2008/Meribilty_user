import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:meribilty/MainProfile.dart';
import 'package:meribilty/darwer.dart';
import 'package:meribilty/loading_select.dart';
import 'package:meribilty/pickLocation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Darwe()),
                        );
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          'assets/menu.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Hi Ahmed,",
                        style: TextStyle(
                          color: Color(0xFF2F4D84),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    AppLocalizations.of(context)!.market,
                    style: TextStyle(
                      color: Color(0xFF2F4D84),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 280,
                    ),
                    Image.asset("assets/Noti.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/mes.png"),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    AppLocalizations.of(context)!.top,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xFF2F4D84,
                        ),
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: new BoxDecoration(
                                color: Color(0xFF2F4D84),
                                borderRadius: new BorderRadius.only(
                                  topRight: const Radius.circular(20.0),
                                  bottomLeft: const Radius.circular(20.0),
                                  bottomRight: const Radius.circular(20.0),
                                )),
                            width: 170,
                            height: 330,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProjectMain()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 160,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                          topRight: const Radius.circular(20.0),
                                          bottomLeft:
                                              const Radius.circular(20.0),
                                          bottomRight:
                                              const Radius.circular(20.0),
                                        )),
                                    child: Image.asset(
                                      "assets/hom.png",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    AppLocalizations.of(context)!.port,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    AppLocalizations.of(context)!.cargo,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: new BoxDecoration(
                                color: Color(0xFF2F4D84),
                                borderRadius: new BorderRadius.only(
                                  topRight: const Radius.circular(20.0),
                                  bottomLeft: const Radius.circular(20.0),
                                  bottomRight: const Radius.circular(20.0),
                                )),
                            width: 170,
                            height: 330,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loadingselect()),
                                );
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    height: 160,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                          topRight: const Radius.circular(20.0),
                                          bottomLeft:
                                              const Radius.circular(20.0),
                                          bottomRight:
                                              const Radius.circular(20.0),
                                        )),
                                    child: Image.asset(
                                      "assets/hom.png",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      AppLocalizations.of(context)!.same,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      AppLocalizations.of(context)!.delivsmall,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          AppLocalizations.of(context)!.coming,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF2F4D84),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF2F4D84), width: 3),
                                  borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(20.0),
                                    bottomLeft: const Radius.circular(20.0),
                                    bottomRight: const Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/po.png",
                                      width: 30,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.ware,
                                      style: TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF2F4D84), width: 3),
                                  borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(20.0),
                                    bottomLeft: const Radius.circular(20.0),
                                    bottomRight: const Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/water.png",
                                      width: 70,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.water,
                                      style: TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF2F4D84), width: 3),
                                  borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(20.0),
                                    bottomLeft: const Radius.circular(20.0),
                                    bottomRight: const Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/car.png",
                                      width: 50,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.car,
                                      style: TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            //
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF2F4D84), width: 3),
                                  borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(20.0),
                                    bottomLeft: const Radius.circular(20.0),
                                    bottomRight: const Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/car.png",
                                      width: 50,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.sea,
                                      style: TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xFF2F4D84), width: 3),
                                  borderRadius: new BorderRadius.only(
                                    topRight: const Radius.circular(20.0),
                                    bottomLeft: const Radius.circular(20.0),
                                    bottomRight: const Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/car.png",
                                      width: 50,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.air,
                                      style: TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),

                            //
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: CarouselSlider(
                          items: [
                            //1st Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/img1.png'),
                                ),
                              ),
                            ),

                            //2nd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/img1.png'),
                                ),
                              ),
                            ),

                            //3rd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/img1.png'),
                                ),
                              ),
                            ),
                          ],

                          //Slider Container properties
                          options: CarouselOptions(
                            height: 200,
                            enlargeCenterPage: false,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 1800),
                            viewportFraction: 1,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          AppLocalizations.of(context)!.need,
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF2F4D84)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: new BorderRadius.only(
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/acc1.png",
                              ),
                              Text(
                                AppLocalizations.of(context)!.access,
                                style: TextStyle(
                                  color: Color(0xffB8B8D2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: new BorderRadius.only(
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/acc2.JPG",
                              ),
                              Text(
                                AppLocalizations.of(context)!.tyres,
                                style: TextStyle(
                                  color: Color(0xffB8B8D2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      //
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: new BorderRadius.only(
                              topRight: const Radius.circular(20.0),
                              bottomLeft: const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/acc3.PNG",
                              ),
                              Text(
                                AppLocalizations.of(context)!.braker,
                                style: TextStyle(
                                  color: Color(0xffB8B8D2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Container(
                      width: 200,
                      height: 90,
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 40,
                              ),
                              Image.asset('assets/add.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(AppLocalizations.of(context)!.neehelp,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF583EF2),
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  side: BorderSide(color: Colors.white)),
                            )),
                        onPressed: () {},
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
