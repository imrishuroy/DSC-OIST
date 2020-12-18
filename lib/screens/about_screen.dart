import 'package:dsc_oist/widgets/image_header.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = 'about-screen';
  final feedBackUrl = 'https://forms.gle/KEBGbXWsR1D9VLkh7';
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
              child: Text(
                'Let\'s learn together',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Text(
                'A community that ever existed started with sharing. We work in a team and learn from each other.Our DSC has 4 domains till now. So let’s start learning something new and excited.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Thank you for trying the app. Most of the features of the app depends on internet, so make sure you have proper internet connection to enjoy each and every features of the app.',
                        style: TextStyle(
                          fontFamily: 'Gupter',
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Give us feedback by tapping into feedback link bellow.',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   child: Image.asset('assets/people.png'),
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 17.0),
              child: InkWell(
                onTap: () async {
                  if (await canLaunch(feedBackUrl)) {
                    launch(feedBackUrl);
                  } else {
                    print('can\'t launch url');
                  }
                },
                child: Text(
                  'FeedBack',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80.0),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Made with ❤ by DSC OIST',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Version 1.0.0',
                    style: TextStyle(color: Colors.white60),
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
