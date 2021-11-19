// ignore_for_file: avoid_print, sized_box_for_whitespace, file_names, dead_code

import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:meribilty/provider/provider.dart';
// ignore: unused_import
import 'package:meribilty/veiw/otp_screen.dart';
import 'package:provider/provider.dart';

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
                        child: Image.asset("assets/logo1.png")),
                    Positioned(
                        top: 150,
                        child: Image.asset(
                          "assets/mai.png",
                        )),
                    Positioned(
                      top: 280,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(4.0),
                          width: 300,
                          height: 590,
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
                              SingleChildScrollView(
                                child: Card(
                                  child: Container(
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(7),
                                          child: Consumer<LocaleProvider>(
                                              builder: (context, state, child) {
                                            return Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Individual(
                                                        screen:
                                                            state.loadscren),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Businesspro(
                                                      screen: state.loadscren,
                                                    ),
                                                    const SizedBox(
                                                      width: 6,
                                                    ),
                                                  ],
                                                ),

                                                // TextFormField(
                                                //   cursorColor: Colors.black,
                                                //   decoration:
                                                //       const InputDecoration(
                                                //           border:
                                                //               OutlineInputBorder(),
                                                //           contentPadding:
                                                //               EdgeInsets.only(
                                                //                   left: 15,
                                                //                   bottom: 11,
                                                //                   top: 11,
                                                //                   right: 15),
                                                //           hintText:
                                                //               "name@example.com"),
                                                // ),
                                                // const SizedBox(
                                                //   height: 6,
                                                // ),
                                                // TextFormField(
                                                //   cursorColor: Colors.black,
                                                //   decoration: const InputDecoration(
                                                //       border: OutlineInputBorder(),
                                                //       contentPadding:
                                                //           EdgeInsets.only(
                                                //               left: 15,
                                                //               bottom: 11,
                                                //               top: 11,
                                                //               right: 15),
                                                //       hintText: "Password"),
                                                // ),
                                                // const SizedBox(
                                                //   height: 10,
                                                // ),
                                                // Row(
                                                //   children: [
                                                //     Container(
                                                //       // padding:
                                                //       //     const EdgeInsets.only(
                                                //       //   left: 10,
                                                //       // ),
                                                //       height: 50,
                                                //       color: Colors.white,
                                                //       child: Row(
                                                //         children: [
                                                //           Container(
                                                //             height: 50,
                                                //             decoration:
                                                //                 BoxDecoration(
                                                //                     borderRadius:
                                                //                         const BorderRadius
                                                //                             .only(
                                                //                       topLeft: Radius
                                                //                           .circular(
                                                //                               10.0),
                                                //                       bottomLeft: Radius
                                                //                           .circular(
                                                //                               10.0),
                                                //                     ),
                                                //                     border:
                                                //                         Border.all(
                                                //                       color: Colors
                                                //                           .black12,
                                                //                     )),
                                                //             child: Row(
                                                //               children: [
                                                //                 const SizedBox(
                                                //                   width: 3,
                                                //                 ),
                                                //                 Image.asset(
                                                //                   "assets/pakistan.png",
                                                //                   width: 30,
                                                //                 ),
                                                //                 const Icon(Icons
                                                //                     .arrow_drop_down_outlined),
                                                //                 const SizedBox(
                                                //                   width: 2,
                                                //                 ),
                                                //                 const Text(
                                                //                   "+92",
                                                //                   style: TextStyle(
                                                //                       fontWeight:
                                                //                           FontWeight
                                                //                               .bold),
                                                //                 ),
                                                //                 const SizedBox(
                                                //                   width: 3,
                                                //                 ),
                                                //               ],
                                                //             ),
                                                //           ),
                                                //           // Container(
                                                //           //     height: 50,
                                                //           //     width: 180,
                                                //           //     child:
                                                //           //         const TextField(
                                                //           //       style: TextStyle(
                                                //           //           fontSize: 20.0,
                                                //           //           color: Colors
                                                //           //               .black),
                                                //           //       decoration: InputDecoration(
                                                //           //           border:
                                                //           //               OutlineInputBorder(),
                                                //           //           labelText:
                                                //           //               'Mobile Number',
                                                //           //           labelStyle:
                                                //           //               TextStyle(
                                                //           //                   fontSize:
                                                //           //                       14)),
                                                //           //     ))
                                                //         ],
                                                //       ),
                                                //     ),
                                                //   ],
                                                // ),
                                                // const SizedBox(
                                                //   height: 20,
                                                // ),
                                                // SizedBox(
                                                //     width: double.infinity,
                                                //     child: ElevatedButton(
                                                //       child: Text(
                                                //           "Sign Up".toUpperCase(),
                                                //           style: const TextStyle(
                                                //               fontSize: 14)),
                                                //       style: ButtonStyle(
                                                //           backgroundColor:
                                                //               MaterialStateProperty
                                                //                   .all<
                                                //                           Color>(
                                                //                       const Color(
                                                //                           0xFF2F4D84)),
                                                //           shape: MaterialStateProperty
                                                //               .all<
                                                //                   RoundedRectangleBorder>(
                                                //             const RoundedRectangleBorder(
                                                //                 borderRadius:
                                                //                     BorderRadius
                                                //                         .all(Radius
                                                //                             .circular(
                                                //                                 8)),
                                                //                 side: BorderSide(
                                                //                     color: Color(
                                                //                         0xFF2F4D84))),
                                                //           )),
                                                //       onPressed: () {},
                                                //     )),
                                                // const SizedBox(
                                                //   height: 10,
                                                // ),
                                              ],
                                            );
                                          }),
                                        ),
                                        Consumer<LocaleProvider>(
                                            builder: (context, state, child) {
                                          if (state.loadscren == Screen.zero) {
                                            return Container();
                                          }

                                          if (state.loadscren == Screen.one) {
                                            return const Body();
                                          }

                                          if (state.loadscren == Screen.two) {             
                                            return const Body();
                                          } else {
                                            return const Text("Something went");
                                          }
                                        }),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //seocnd tab
                              const Loginin()
                            ],
                            onChange: (index) => print(index),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: const [
                    Text(
                      "By clicking signup, you agree to our ",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Terms and Condition  ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Loginin extends StatelessWidget {
  const Loginin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Card(
      child: Container(
        color: Colors.white,
        child: Form(
          key: _formKey,
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
                      fontSize: 17,
                      color: Color(0xff707070),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 11),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              border: Border.all(
                                color: Colors.black26, // red as border color
                              )),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 6,
                              ),
                              Image.asset(
                                "assets/pakistan.png",
                                width: 30,
                              ),
                              const Icon(Icons.arrow_drop_down_outlined),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                "+92",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Container(
                                  height: 80,
                                  width: 169,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Mobile Number';
                                      }
                                      return null;
                                    },
                                    style: const TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Mobile Number',
                                        labelStyle: TextStyle(fontSize: 14)),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password ';
                    }
                    return null;
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Password",
                    hintStyle:
                        const TextStyle(fontSize: 15, color: Color(0xffC8C7CC)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFE2E1E8),
                          borderRadius: BorderRadius.circular(15)),
                      height: 30,
                      width: 40,
                      child: const Checkbox(
                        tristate: false,
                        // fillColor: Color(0xFFE2E1E8),
                        // activeColor: Colors.white,
                        // fillColor: Color(0xFF2F4D84),

                        value: true,
                        onChanged: null,
                      ),
                    ),
                    const Text(
                      "Remember me ",
                      style: TextStyle(fontSize: 14, color: Color(0xffC8C7CC)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forget Password ",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffC8C7CC)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Next".toUpperCase(),
                        style: const TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2F4D84)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              side: BorderSide(color: Color(0xFF2F4D84))),
                        )),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScren()));
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Full Name';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: Color(0xffC8C7CC))),
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email Address';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "name@example.com",
                  hintStyle: TextStyle(color: Color(0xffC8C7CC))),
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                return null;
              },
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xffC8C7CC))),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              // padding:
              //     const EdgeInsets.only(
              //   left: 10,
              // ),
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.black12,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 3,
                        ),
                        Image.asset(
                          "assets/pakistan.png",
                          width: 30,
                        ),
                        const Icon(Icons.arrow_drop_down_outlined),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          "+92",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 80,
                      width: 195,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Full Name';
                          }
                          return null;
                        },
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.black),
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Color(0xffC8C7CC))),
                      ))
                ],
              ), 
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Sign Up".toUpperCase(),
                      style: const TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF2F4D84)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            side: BorderSide(color: Color(0xFF2F4D84))),
                      )),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {     
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Loginin() ));
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}

class Businesspro extends StatelessWidget {
  final Screen screen;
  const Businesspro({
    Key? key,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<LocaleProvider>().changeScreen(Screen.two);
      },
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset("assets/business.png"),
          const Text(
            "Business Pro",
            style: TextStyle(fontSize: 17, color: Color(0xffFFCC00)),
          ),
          const Text(
            "Credit Facility ",
            style: TextStyle(fontSize: 10),
          ),
          const Text(
            "Counter Offers ",
            style: TextStyle(fontSize: 10),
          ),
          const Text(
            "Requires Verfication",
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class Individual extends StatelessWidget {
  final Screen screen;
  const Individual({
    Key? key,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lo = false;
    return GestureDetector(
      onTap: () {
        context.read<LocaleProvider>().changeScreen(Screen.one);
      },
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/simple.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Individual",
                style: TextStyle(fontSize: 20),
              ),
              const Text(""),
              const Text(""),
              const Text(""),
            ],
          ),
          Positioned(
            left: 50,
            child: Container(
                alignment: Alignment.topRight,
                child: lo
                    ? Image.asset(
                        "assets/Follow.png",
                        width: 30,
                      )
                    : const Text("Aa")),
          ),
        ],
      ),
    );
  }
}
