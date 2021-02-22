import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildSolutionHeader extends StatelessWidget {
  void _urlLauncher(url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      print('Can\'t launch url');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.grey[250],
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Container(
      child: Column(
        children: [
          // Container(
          //   height: 225.0,
          //   width: double.infinity,
          //   child: Image.asset(
          //     'assets/solution.jpg',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          TweenAnimationBuilder(
            curve: Curves.ease,
            child: Container(
              // height: 225.0,
              height: 100.0,
              width: double.infinity,
              child: Image.asset(
                'assets/solution.jpg',
                fit: BoxFit.cover,
              ),
            ),
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 500),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Container(
                  // height: 225.0,
                  height: 100 * value * 2.3,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/solution.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),

          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23.0,
              vertical: 12.0,
            ),
            child: Text(
              'The 2021 Solution Challenge mission is to solve one or more of the United Nations 17 Sustainable Development Goals using Google technology.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Icon(
              //   Icons.radio_button_checked,
              //   color: Colors.pink,
              // ),
              SizedBox(width: 20.0),
              GestureDetector(
                onTap: () => _urlLauncher(
                    'https://docs.google.com/forms/d/e/1FAIpQLSeSDyP0MkLusZchFAKOE4qzoDIG5Yg4XSVbFK9EZE5TYejpbA/viewform'),
                child: Text(
                  'Register Here...',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                    //color: Colors.blue,
                    color: Colors.blue,
                    fontFamily: 'Harmattan',
                  ),
                ),
              ),

              SizedBox(width: 24.0),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
