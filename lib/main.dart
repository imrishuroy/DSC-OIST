import 'package:dsc_oist/screens/about_screen.dart';
import 'package:dsc_oist/screens/caraousel_experiment.dart';
import 'package:dsc_oist/screens/learning_screen.dart';
import 'package:dsc_oist/screens/past_event_screen.dart';
import 'package:dsc_oist/screens/event_page.dart';
import 'package:dsc_oist/screens/home_screen.dart';
import 'package:dsc_oist/screens/splashscreen.dart';
import 'package:dsc_oist/screens/team_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'DSC OIST',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySplashScreen(),
      routes: {
        TeamScreen.routeName: (ctx) => TeamScreen(),
        EventPage.routeName: (ctx) => EventPage(),
        TeamScreen.routeName: (ctx) => TeamScreen(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
        MyHomeScreen.routeName: (ctx) => MyHomeScreen(),
        PastEventsScreen.routeName: (ctx) => PastEventsScreen(),
        // CaraoselExperiment.routeName: (ctx) => CaraoselExperiment(),
        LearningScreen.routeName: (ctx) => LearningScreen(),
      },
    );
  }
}
