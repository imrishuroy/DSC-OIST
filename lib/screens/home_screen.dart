import 'package:dsc_oist/screens/about_screen.dart';

import 'package:dsc_oist/screens/event_page.dart';

import 'package:dsc_oist/screens/learning_screen.dart';
import 'package:dsc_oist/screens/notification_screen.dart';
import 'package:dsc_oist/screens/solution_challange_screen.dart';

import 'package:dsc_oist/screens/team_screen.dart';
import 'package:dsc_oist/widgets/domainBlock.dart';
import 'package:flutter/material.dart';
import 'package:dsc_oist/widgets/bottomAppBarButtons.dart';
import 'package:dsc_oist/widgets/cardCarousel.dart';
import 'package:dsc_oist/widgets/header.dart';
import 'package:dsc_oist/widgets/joinUs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class MyHomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';
  MyHomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  void _initializeFirebase() async {
    try {
      await Firebase.initializeApp();
    } catch (error) {
      print(error);
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeFirebase();
    final fbm = FirebaseMessaging();
    // fbm.requestNotificationPermissions();
    fbm.configure(
        //     //called when the app is in foregraound and we receive a push notification
        //     onMessage: (message) {
        //   _navigateScreen(message);
        // },
        //Called when the app has been closed completely and it's opened by notification
        onLaunch: (message) async {
      _navigateScreen(message);
    },
        //Called when the app is in background
        onResume: (message) async {
      _navigateScreen(message);
    });
  }

  _navigateScreen(Map<String, dynamic> message) {
    var notificationData = message['data'];
    var view = notificationData['view'];
    if (view != null) {
      if (view == 'event-page') {
        return Navigator.pushNamed(context, EventPage.routeName);
      }
      if (view == 'notification-page') {
        return Navigator.pushNamed(context, NotificationScreen.routeName);
      }
      if (view == 'solution-challenge') {
        return Navigator.pushNamed(context, SolutionChallange.routeName);
      }
    }
  }

  ListTile _buildListTile(
      IconData icon, String title, Color color, String route) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      leading: Icon(
        icon,
        color: color,
        size: 27.0,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Harmattan',
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  void _showModalSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
      ),
      context: context,
      builder: (builder) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
            ),
            border: Border.all(width: 0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildListTile(Icons.home, 'Home', Colors.deepOrange,
                      MyHomeScreen.routeName),
                  _buildListTile(
                      Icons.event, 'Events', Colors.green, EventPage.routeName),
                  _buildListTile(Icons.people, 'Our Team', Colors.blue,
                      TeamScreen.routeName),
                  _buildListTile(Icons.sticky_note_2, 'Learning', Colors.indigo,
                      LearningScreen.routeName),
                  _buildListTile(Icons.notifications_rounded, 'Notifications',
                      Colors.pink, NotificationScreen.routeName),
                  _buildListTile(
                    Icons.wb_incandescent,
                    'Solution Challenge',
                    Color(0xffff7b54),
                    SolutionChallange.routeName,
                  ),
                  _buildListTile(Icons.info_outline, 'About Us',
                      Color(0xff12e2a3), AboutScreen.routeName),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white54,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 37, 46, 1),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(25, 37, 46, 1),
          elevation: 50,
          //  color: colors[index],
          child: Container(
            decoration: BoxDecoration(
              // color: Color.fromRGBO(255, 240, 240, 1),
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              border: Border.all(
                // color: Colors.blue,
                color: Colors.pink,
                width: 2,
              ),
            ),
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  color: Colors.white,
                  onPressed: _showModalSheet,
                  icon: Icon(
                    Icons.menu,
                    size: 28,
                  ),
                ),
                BottomAppBarButtons(
                  url:
                      'https://www.youtube.com/channel/UC7hGd3W-i-edr8oLPZ_dYpw',
                  icon: FontAwesomeIcons.youtube,
                ),
                BottomAppBarButtons(
                    url: 'https://t.me/dsc_oist_bhopal',
                    icon: FontAwesomeIcons.telegramPlane),
                BottomAppBarButtons(
                  url: 'https://www.instagram.com/dscoist/',
                  icon: FontAwesomeIcons.instagram,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Header(),
              CardCarouse(),
              SizedBox(height: 36.0),
              DomainBlock(),
              SizedBox(height: 40.0),
              JoinUs(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
