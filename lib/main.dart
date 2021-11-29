
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meribilty/L10n/l10n.dart';
import 'package:meribilty/provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:meribilty/veiw/splashscreen.dart';
import 'package:provider/provider.dart';
// import 'package:custom_splash/custom_splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

    return ChangeNotifierProvider(
        create: (_) => LocaleProvider(),
        builder: (context, child) {
          final provider = context.watch<LocaleProvider>();
          return MaterialApp(
            title: 'Meribilty',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color(0xFF2F4D84),
            ),
            locale: provider.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,  
            ],
            home: const SplashScreen());
            // CustomSplash(
            // imagePath: 'assets/Logo.png',
            // backGroundColor: Colors.white,
            // animationEffect: 'zoom-in',
            // home: const Language(),
            // customFunction: duringSplash,
            // duration: 5500,
            // type: CustomSplashType.StaticDuration ,
            // outputAndHome: op,
            //   ),
          // );
        }); 
  }
} 
