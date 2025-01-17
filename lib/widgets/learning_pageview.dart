import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dsc_oist/widgets/one_learning_card.dart';

import 'package:flutter/material.dart';

class LearningPageView extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('learning/tVw5OT8oxzYmGuQPOBNX/collection')
          .snapshots(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  OneLearningCard(
                    domainDescription:
                        'There are 130 billion Android devices.\nA collection of best android learning resources.',
                    snapshot: snapshot,
                    domain: 'android',
                    domainImageUrl: 'assets/images/android.png',
                    domainTitle: 'Android Development',
                    cardColor: Color(0xffeafbea),
                  ),
                  OneLearningCard(
                    domainDescription:
                        'iOS is a mobile operating system created and developed by Apple Inc.',
                    snapshot: snapshot,
                    domain: 'ios',
                    domainImageUrl: 'assets/images/apple.png',
                    domainTitle: 'iOS Development',
                    cardColor: Color(0xfffff1e9),
                  ),
                  OneLearningCard(
                    domainDescription:
                        'Build beautiful, natively compiled apps for mobile, web, and desktop from a single codebase.',
                    snapshot: snapshot,
                    domain: 'flutter',
                    domainImageUrl: 'assets/images/flutter.png',
                    domainTitle: 'Flutter App Development',
                    cardColor: Color(0xffcdfffc),
                  ),
                  OneLearningCard(
                    domainDescription:
                        'Web development is the work involved in developing a Web site for the Internet.',
                    snapshot: snapshot,
                    domain: 'web',
                    domainImageUrl: 'assets/images/web.png',
                    domainTitle: 'Web Development',
                    cardColor: Color(0xfffdffbc),
                  ),
                  OneLearningCard(
                    domainDescription:
                        'Competitive programming is solving well-defined problems by writing computer programs under specified limits.',
                    snapshot: snapshot,
                    domain: 'cp',
                    domainImageUrl: 'assets/images/programmer.png',
                    domainTitle: 'Competitive Programming',
                    cardColor: Color(0xfff8efd4),
                  ),
                  OneLearningCard(
                    domainDescription:
                        'DevOps is a set of practices that combines software development and IT operations. It aims to shorten the systems development life cycle.',
                    snapshot: snapshot,
                    domain: 'devOps',
                    domainImageUrl: 'assets/images/devops.png',
                    domainTitle: 'DevOps and Cloud ',
                    cardColor: Color(0xffeff48e),
                  ),
                  OneLearningCard(
                    domainDescription:
                        'A code editor is a text editor program designed specifically for editing the source code of computer programs. Here is a collection of world-class editors for your code.',
                    snapshot: snapshot,
                    domain: 'editors',
                    domainImageUrl: 'assets/code-editor.png',
                    domainTitle: 'Code Editors   ',
                    cardColor: Color(0xfff5f4f4),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
