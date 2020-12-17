import 'package:dsc_oist/screens/about_screen.dart';
import 'package:dsc_oist/screens/caraousel_experiment.dart';

import 'package:dsc_oist/screens/event_page.dart';
import 'package:dsc_oist/screens/learning_screen.dart';
import 'package:dsc_oist/screens/team_screen.dart';

import 'package:flutter/material.dart';
import 'package:dsc_oist/widgets/bottomAppBarButtons.dart';
import 'package:dsc_oist/widgets/cardCarousel.dart';
import 'package:dsc_oist/widgets/header.dart';
import 'package:dsc_oist/widgets/joinUs.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';
  MyHomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  // bool _error = false;
  // bool _initialized = false;

  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        //  _initialized = true;
      });
    } catch (error) {
      print(error);
      setState(() {
        // _error = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    // Navigator.pushNamed(context, SuccessScreen.routeName);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // _buildListTile(
                //     Icons.sick_sharp, 'SigIn', Colors.black, signInWithGoogle),

                _buildListTile(
                    Icons.home, 'Home', Colors.red, MyHomeScreen.routeName),
                _buildListTile(
                    Icons.event, 'Events', Colors.green, EventPage.routeName),
                _buildListTile(
                    Icons.people, 'Team', Colors.blue, TeamScreen.routeName),
                _buildListTile(Icons.sticky_note_2, 'Learning', Colors.indigo,
                    LearningScreen.routeName),

                _buildListTile(Icons.info_outline, 'About ', Color(0xffffd31d),
                    AboutScreen.routeName),
              ],
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //showAlertDialog(context: context);
            // Navigator.pushNamed(context, CaraoselExperiment.routeName);
          },
          child: Icon(Icons.plus_one),
        ),
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
              SizedBox(
                height: 300.0,
              ),
              JoinUs()
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: signInWithGoogle,
        //   tooltip: 'Increment',
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}
