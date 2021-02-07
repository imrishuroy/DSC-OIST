import 'package:dsc_oist/widgets/image_header.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = 'about-screen';
  final url =
      'https://dsc.community.dev/oriental-institute-of-science-and-technology/';
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 37, 46, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageHeader(
              title: 'About Us',
              imageUrl: 'assets/community.jpg',
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Developer Student Clubs (DSC) powered by Google Developers are university-based community groups for students interested in Google developer technologies.\n',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'We are a group of individuals who are passionate about community work and believe technology can solve many day to day problems.\n',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'By joining a DSC students can grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community. No matter what your knowledge level is you are most welcome to be a part of this community and learn and grow together!',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 25.0),
              child: InkWell(
                onTap: () async {
                  if (await canLaunch(url)) {
                    launch(url);
                  } else {
                    print('can\'t launch url');
                  }
                },
                child: Text(
                  'Join Us at dsc.developer.dev',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w900,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 33.0),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Made with ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Harmattan')),
                      TweenAnimationBuilder(
                        child: Icon(
                          // 'Made with ❤ by DSC OIST',
                          Icons.favorite,
                          color: Colors.red,
                          size: 10,
                        ),
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: Duration(seconds: 1),
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Icon(
                              Icons.favorite,
                              size: value * 35,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      Text(
                        ' by DSC OIST',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'Harmattan'),
                      ),
                    ],
                  ),
                  Text(
                    'Version 1.0.2',
                    style: TextStyle(
                      color: Colors.white60,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
