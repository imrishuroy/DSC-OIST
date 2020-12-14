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
      seconds: 3,
      navigateAfterSeconds: MyHomeScreen(),
      title: Text(
        'DSC OIST',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      image: Image.asset('assets/dsc.png'),
      //  backgroundColor: Color(0xff28df99),
      backgroundColor: Colors.white,
      photoSize: 110.0,
      loaderColor: Colors.orangeAccent,
    );
  }
}
