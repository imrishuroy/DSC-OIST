import 'package:dsc_oist/widgets/learning_pageview.dart';
import 'package:flutter/material.dart';

class LearningScreen extends StatelessWidget {
  static String routeName = '/learning-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 37, 46, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/learning-cover.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 10.0,
                left: 24.0,
                child: SafeArea(
                  child: Text(
                    'Learning Resourses',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Learning anything new is requires perfect resourses. We got you covered with updated and awesome new contents.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(
            child: LearningPageView(),
          ),
        ],
      ),
    );
  }
}
