import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = 'about-screen';
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 37, 46, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 23.0,
                  vertical: 10.0,
                ),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Card(
                  color: Colors.white70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          '"',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Text(
                          'There is something we can’t achieve alone that’s why learning together is important. A community that ever existed started with sharing. We work in a team and learn from each other. So let’s start learning something new and excited.',
                          style: TextStyle(
                            fontFamily: 'Gupter',
                            color: Colors.black,
                            fontSize: 18.5,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20.0,
                            ),
                            child: Text(
                              '"',
                              style: TextStyle(fontSize: 30.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Image.asset('assets/people.png'),
              ),
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
                      'Version 1.0.1',
                      style: TextStyle(color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
