import 'package:flutter/material.dart';
import 'package:meribilty/veiw/language.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Language()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF2F4D84),
              image: DecorationImage(
                  image: AssetImage('assets/Splash_Screens.png'),
                  fit: BoxFit.cover),
            ),
          )
       
       
        ],
      ),
    );
  }
}
