import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LearningScreen extends StatelessWidget {
  static String routeName = 'LearningScreen';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white60,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 37, 46, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/learning.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 34.0,
                  ),
                  child: Text(
                    'Learning Resourses',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Learning anything new is requires perfect resourses. We got you covered with updated and awesome new contents.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: Image.asset('assets/android.png'),
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        'Android App Development',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 13.0),
                  Text(
                    '1.Kotlin Playground',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    '2.Officil Android Docs',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    '3.Officil Kotlin Docs',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
