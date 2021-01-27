import 'package:dsc_oist/widgets/one_learning_card.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class NewLearningScreen extends StatelessWidget {
  static String routeName = 'new-learning-screen';
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 37, 46, 1),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('learning/tVw5OT8oxzYmGuQPOBNX/collection')
              .snapshots(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return Column(
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
                  child: PageView(
                    controller: _controller,
                    children: [
                      OneLearningCard(
                        domainDescription:
                            'Android is every where there are 130 billion android devices',
                        snapshot: snapshot,
                        domain: 'android',
                        domainImageUrl: 'assets/images/android.png',
                        domainTitle: 'Android Development',
                        cardColor: Color(0xffeafbea),
                      ),
                      OneLearningCard(
                        domainDescription:
                            'iOS is a mobile operating system created and developed by Apple Inc',
                        snapshot: snapshot,
                        domain: 'ios',
                        domainImageUrl: 'assets/images/apple.png',
                        domainTitle: 'iOS Development',
                        cardColor: Color(0xfffff1e9),
                      ),
                      OneLearningCard(
                        domainDescription:
                            'Develop cross platform apps with Flutter',
                        snapshot: snapshot,
                        domain: 'flutter',
                        domainImageUrl: 'assets/images/flutter.png',
                        domainTitle: 'Flutter App Development',
                        cardColor: Color(0xfffbbf1fa),
                      ),
                      OneLearningCard(
                        domainDescription:
                            'Learn web development as your own pace',
                        snapshot: snapshot,
                        domain: 'web',
                        domainImageUrl: 'assets/images/web.png',
                        domainTitle: 'Web Development',
                        cardColor: Color(0xfffdffbc),
                      ),
                      OneLearningCard(
                        domainDescription: 'Learn cp with great resources',
                        snapshot: snapshot,
                        domain: 'cp',
                        domainImageUrl: 'assets/images/programmer.png',
                        domainTitle: 'Competitive Programming',
                        cardColor: Color(0xfff4f5db),
                      ),
                      OneLearningCard(
                        domainDescription: 'Get to know about devOps and cloud',
                        snapshot: snapshot,
                        domain: 'devOps',
                        domainImageUrl: 'assets/images/devops.png',
                        domainTitle: 'DevOps and Cloud ',
                        cardColor: Color(0xffeeeeee),
                      ),
                      OneLearningCard(
                        domainDescription:
                            'A collection of world class editors for your code',
                        snapshot: snapshot,
                        domain: 'editors',
                        domainImageUrl: 'assets/code-editor.png',
                        domainTitle: 'Code Editors   ',
                        cardColor: Color(0xffd9e4dd),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
