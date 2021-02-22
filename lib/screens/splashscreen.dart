import 'package:dsc_oist/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: MyHomeScreen(),
      title: Text(
        'Welcome to DSC OIST',
        style: TextStyle(
          fontSize: 23.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      image: Image.asset('assets/dsc.png'),
      backgroundColor: Color.fromRGBO(25, 37, 46, 1),
      photoSize: 110.0,
      loaderColor: Colors.pink,
    );
  }
}
