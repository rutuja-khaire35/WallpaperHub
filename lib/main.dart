import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wallpaperhubapp/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WallpaperHub',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // home: Home(),
      home: AnimatedSplashScreen(
        nextScreen: Home(),
        splash: Image.asset('assets/images/splashImg.jpg'),
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
