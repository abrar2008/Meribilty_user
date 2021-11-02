// ignore_for_file: avoid_print, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:meribilty/veiw/otp_screen.dart';
import 'package:meribilty/veiw/phone.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: double.infinity,
                        height: 900,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                        top: 50,
                        left: 50,
                        child:
                            Container(child: Image.asset("assets/logo1.png"))),
                    Positioned(
                        top: 150,
                        child: Container(
                          child: Image.asset(
                            "assets/mai.png",
                          ),
                        )),
                    Positioned(
                      top: 280,
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(8.0),
                          width: 300,
                          height: 700,
                          child: ContainedTabBarView(
                            tabs: const [
                              Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('Sign In',
                                  style: TextStyle(color: Colors.black)),
                            ],
                            views: [
                              //first tab
                              Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                      "assets/simple.png"),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Individual",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  const Text(""),
                                                  const Text(""),
                                                  const Text(""),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Image.asset(
                                                      "assets/business.png"),
                                                  const Text(
                                                    "Business Pro",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xffFFCC00)),
                                                  ),
                                                  const Text(
                                                      "Credit Facility "),
                                                  const Text("Counter Offers "),
                                                  const Text(
                                                      "Requires Verfication"),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 6,
                                              ),
                                            ],
                                          ),
                                          TextFormField(
                                            cursorColor: Colors.black,
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                                contentPadding: EdgeInsets.only(
                                                    left: 15,
                                                    bottom: 11,
                                                    top: 11,
                                                    right: 15),
                                                hintText: "name@example.com"),
                                          ),
                                          TextFormField(
                                            cursorColor: Colors.black,
                                            decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                                contentPadding: EdgeInsets.only(
                                                    left: 15,
                                                    bottom: 11,
                                                    top: 11,
                                                    right: 15),
                                                hintText: "Password"),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                "+92",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              // TextFormField(
                                              //   cursorColor: Colors.black,
                                              //   decoration: new InputDecoration(
                                              //       border: InputBorder.none,
                                              //       focusedBorder:
                                              //           InputBorder.none,
                                              //       enabledBorder:
                                              //           InputBorder.none,
                                              //       errorBorder:
                                              //           InputBorder.none,
                                              //       disabledBorder:
                                              //           InputBorder.none,
                                              //       contentPadding:
                                              //           EdgeInsets.only(
                                              //               left: 15,
                                              //               bottom: 11,
                                              //               top: 11,
                                              //               right: 15),
                                              //       hintText: "Password"),
                                              // ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                child: Text(
                                                    "Sign Up".toUpperCase(),
                                                    style: const TextStyle(
                                                        fontSize: 14)),
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                const Color(
                                                                    0xFF2F4D84)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          8)),
                                                          side: BorderSide(
                                                              color: Color(
                                                                  0xFF2F4D84))),
                                                    )),
                                                onPressed: () {},
                                              )),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "By clicking signup you agree to our Terms and Condition",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              //seocnd tab
                              Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: const Text(
                                          "Login with your phone number ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff707070),
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const MyHomePage(),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    TextFormField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          contentPadding: const EdgeInsets.only(
                                              left: 15,
                                              bottom: 11,
                                              top: 11,
                                              right: 15),
                                          hintText: "Password"),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("Remember me "),
                                          Text("Forget Password "),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          child: Text("Next".toUpperCase(),
                                              style: const TextStyle(
                                                  fontSize: 14)),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      const Color(0xFF2F4D84)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(8)),
                                                    side: BorderSide(
                                                        color:
                                                            Color(0xFF2F4D84))),
                                              )),
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const OtpScren()));
                                          },
                                        )),
                                  ],
                                ),
                              )
                            ],
                            onChange: (index) => print(index),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
