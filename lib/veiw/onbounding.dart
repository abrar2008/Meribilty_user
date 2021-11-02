// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:meribilty/veiw/Location.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => home()),
    );
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
            titleWidget: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => home()));
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            AppLocalizations.of(context)!.skip,
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xFF2F4D84),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/onbo1.png"),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppLocalizations.of(context)!.ride,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            // body: "Request a ride get picked up by a \n nearby community driver ",
            bodyWidget: Text(
              AppLocalizations.of(context)!.ridedetail,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            // image: Image.asset("assets/onbo1.png"),
            decoration: pageDecoration,
            footer: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                // Text(
                //   AppLocalizations.of(context)!.skip,
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Color(0xFF2F4D84),
                //   ),
                // ),
              ],
            )),
        PageViewModel(
            titleWidget: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => home()),
                      );
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.skip,
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF2F4D84),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset("assets/tast2.png"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  AppLocalizations.of(context)!.drive,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            bodyWidget: Text(
              AppLocalizations.of(context)!.drivedetail,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
            // image: Image.asset("assets/tast2.png"),
            decoration: pageDecoration,
            footer: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
              ],
            )),
        PageViewModel(
          titleWidget: Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => home()),
                    );
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      // Text(
                      //   AppLocalizations.of(context)!.skip,
                      //   style: TextStyle(
                      //     fontSize: 17,
                      //     color: Color(0xFF2F4D84),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/map.png"),
              SizedBox(
                height: 40,
              ),
              Text(
                AppLocalizations.of(context)!.truck,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          bodyWidget: Text(
            AppLocalizations.of(context)!.truckdetail,
            style: TextStyle(fontSize: 17),
          ),
          // image: Image.asset("assets/map.png"),
          decoration: pageDecoration,
          footer: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _onIntroEnd(context);
                },
                child: Text(
                  AppLocalizations.of(context)!.start,
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF2F4D84),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback

      skipFlex: 0,

      nextFlex: 0,

      next: Text(" "),

      done: Text(
        "",
        style: TextStyle(
          backgroundColor: Colors.orange,
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),

      dotsDecorator: const DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
        spacing: EdgeInsets.only(left: 0, right: 0),
        size: Size(30.0, 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
        color: Color(0xFFEFEFF4),
        activeColor: Color(0xFF2F4D84),
        activeSize: Size(40.0, 10.0),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
      ),
    );
  }
}
