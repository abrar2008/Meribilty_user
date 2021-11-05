import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';
import 'package:meribilty/veiw/darwer.dart';
import 'package:meribilty/veiw/citymovement.dart';
import 'package:meribilty/veiw/portlogistics.dart';
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
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Darwe()),
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
                    const Align(
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
                    style: const TextStyle(
                      color: Color(0xFF2F4D84),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // const SizedBox(
                    //   width: 280,
                    // ),
                    Image.asset("assets/Noti.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/mes.png"),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    AppLocalizations.of(context)!.top,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xFF2F4D84,
                        ),
                        fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  // padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              width: 160,
                              height: 330,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Portlogistics()),
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 170,
                                      width: 140,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/hom.png'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                          )),
                                      child: const Text(""),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      AppLocalizations.of(context)!.port,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      AppLocalizations.of(context)!.cargo,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Color(0xFF2F4D84),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              width: 165,
                              height: 330,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Citymovement_screen()),
                                  );
                                },
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 160,
                                      width: 130,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage('assets/city.png'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                          )),
                                      child: const Text(""),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        AppLocalizations.of(context)!.same,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .delivsmall,
                                        style: const TextStyle(
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
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          AppLocalizations.of(context)!.coming,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFF2F4D84),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xFF2F4D84), width: 3),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      "assets/po.png",
                                      width: 70,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.ware,
                                      style: const TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xFF2F4D84), width: 3),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      "assets/water.png",
                                      width: 70,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.water,
                                      style: const TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xFF2F4D84), width: 3),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      "assets/car.png",
                                      width: 70,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.car,
                                      style: const TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            //

                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xFF2F4D84), width: 3),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/sea.png",
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.sea,
                                      style: const TextStyle(
                                        color: Color(0xFF2F4D84),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),

                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: const Color(0xFF2F4D84), width: 3),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  )),
                              child: Center(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Image.asset(
                                      "assets/air.png",
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.air,
                                      style: const TextStyle(
                                        color: Color(0xFF2F4D84),
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
                      const SizedBox(
                        height: 20,
                      ),

                      //
                      const SizedBox(
                        height: 10,
                      ),
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/img1.png'),
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/img1.png'),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: AssetImage('assets/img1.png'),
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 1800),
                          viewportFraction: 1,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          AppLocalizations.of(context)!.need,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2F4D84)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/acc1.png",
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                AppLocalizations.of(context)!.access,
                                style: const TextStyle(
                                  color: Color(0xffB8B8D2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/acc2.png",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                AppLocalizations.of(context)!.tyres,
                                style: const TextStyle(
                                  color: Color(0xffB8B8D2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),

                      //
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/acc3.PNG",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                AppLocalizations.of(context)!.braker,
                                style: const TextStyle(
                                  color: Color(0xff38385E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/engine-oil.png",
                                width: 80,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Automotive",
                                style: TextStyle(
                                  color: Color(0xff38385E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/sus.png",
                                width: 80,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Suspension & Steering",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff38385E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/bodyparts.png",
                                width: 80,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Body Parts",
                                style: TextStyle(
                                  color: Color(0xff38385E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 3),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/engine.png",
                                width: 80,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Engine",
                                style: TextStyle(
                                  color: Color(0xff38385E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          _launchURL();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black12, width: 3),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/more.png",
                                  width: 80,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "More ",
                                  style: TextStyle(
                                    color: Color(0xff38385E),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(7),
                    width: double.infinity,
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        child: Center(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 40,
                              ),
                              Image.asset('assets/add.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(AppLocalizations.of(context)!.neehelp,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF583EF2),
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffEAEAFF)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  side: BorderSide(color: Colors.white)),
                            )),
                        onPressed: () {
                          _launchURL();
                        },
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

_launchURL() async {
  const url = 'https://www.google.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
