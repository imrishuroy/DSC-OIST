import 'package:dsc_oist/widgets/image_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class LearningScreen extends StatelessWidget {
  static String routeName = 'LearningScreen';

  urlLauncher(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      print('can\'t launch url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageHeader(
              title: 'Learning Resourses',
              imageUrl: 'assets/learning-cover.png',
            ),
            SizedBox(height: 20.0),
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
            DevelopmentHeading(
              logo: 'assets/images/app.png',
              title: 'Mobile App Development',
              width: width,
            ),
            SizedBox(height: 10.0),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.5 * 0.2),
                  child: Text(
                    'Android',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 7.0),
                Column(
                  children: [
                    Column(
                      children: [
                        LinkText(
                          width: width,
                          text: 'Official Docs',
                          url: 'https://developer.android.com/docs',
                        ),
                        LinkText(
                          width: width,
                          text: 'Android Codelabs',
                          url:
                              'https://codelabs.developers.google.com/?cat=android',
                        ),
                        LinkText(
                          width: width,
                          text: 'Android Training Courses',
                          url: ' https://developer.android.com/courses',
                        ),
                        LinkText(
                          width: width,
                          text: 'Android Study Jam Article',
                          url: 'https://cutt.ly/ChKMbQo',
                        ),
                        LinkText(
                          width: width,
                          text: 'Kotlin Docs',
                          url: 'https://kotlinlang.org/docs/reference/',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.5 * 0.2),
                  child: Text(
                    'iOS',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 7.0),
                Column(
                  children: [
                    Column(
                      children: [
                        LinkText(
                          width: width,
                          text: 'Official Docs',
                          url: 'https://developer.apple.com/documentation/',
                        ),
                        LinkText(
                          width: width,
                          text: 'iOS on GitHub',
                          url:
                              'https://github.com/search?q=iOS+development+tutorial',
                        ),
                        LinkText(
                          width: width,
                          text: 'iOS Dev with Swift by Stanford ',
                          url:
                              'https://itunes.apple.com/us/course/developing-iOS-10-apps-with-Swift/id1198467120',
                        ),
                        LinkText(
                          width: width,
                          text: 'Awesome iOS',
                          url: 'https://ios.libhunt.com',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.5 * 0.2),
                  child: Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 7.0),
                Column(
                  children: [
                    Column(
                      children: [
                        LinkText(
                          width: width,
                          text: 'Flutter Docs',
                          url: 'https://flutter.dev/docs',
                        ),
                        LinkText(
                          width: width,
                          text: 'Flutter Codelabs',
                          url:
                              'https://codelabs.developers.google.com/?cat=flutter',
                        ),
                        LinkText(
                          width: width,
                          text: 'Flutter Books Collection',
                          url: 'https://github.com/imrishuroy/Flutter-Books',
                        ),
                        LinkText(
                          width: width,
                          text: 'Flutter Gems',
                          url: 'https://fluttergems.dev',
                        ),
                        LinkText(
                          width: width,
                          text: 'Dart Language Tour',
                          url: 'https://dart.dev/guides5',
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                DevelopmentHeading(
                  width: width,
                  title: 'Web Development',
                  logo: 'assets/images/web.png',
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    LinkText(
                      width: width,
                      text: 'Flaviocopes',
                      url: 'https://flaviocopes.com',
                    ),
                    LinkText(
                      width: width,
                      text: 'Javascript30',
                      url: 'https://javascript30.com',
                    ),
                    LinkText(
                      width: width,
                      text: 'Traversy Media Youtube',
                      url: 'https://cutt.ly/ChKMbQo',
                    ),
                    LinkText(
                      width: width,
                      text: 'CSS Tricks',
                      url: 'https://cutt.ly/ChKMbQo',
                    ),
                    LinkText(
                      width: width,
                      text: 'MDN web Docs ',
                      url: 'https://developer.mozilla.org/en-US/docs/Learn',
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                DevelopmentHeading(
                  width: width,
                  title: 'Competitive Programming',
                  logo: 'assets/images/programmer.png',
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 60.0),
                        Text(
                          'CP - RoadMap ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.picture_as_pdf_rounded,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              urlLauncher(
                                  'https://drive.google.com/file/d/1YjQGdMQP2vOc4bjwgwaOO3T3TsDThjtQ/view?usp=sharing');
                            }),
                      ],
                    ),
                    LinkText(
                      width: width,
                      text: 'CP - Algorithms',
                      url: 'https://cp-algorithms.com',
                    ),
                    LinkText(
                      width: width,
                      text: 'GeeksforGeeks',
                      url: 'https://www.geeksforgeeks.org',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 60.0),
                        Text(
                          'CP HandBook',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.picture_as_pdf_rounded,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              urlLauncher(
                                  'https://drive.google.com/file/d/11vS0QIiQZHBOYH5UZ69mZzzScEgv0rF5/view?usp=sharing');
                            })
                      ],
                    ),
                    LinkText(
                      width: width,
                      text: 'CodeChef',
                      url: 'https://www.codechef.com',
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                DevelopmentHeading(
                  width: width,
                  title: 'DevOps and Cloud',
                  logo: 'assets/images/devops.png',
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    LinkText(
                      width: width,
                      text: 'Kubernets Docs',
                      url: 'https://kubernetes.io/docs/home/',
                    ),
                    LinkText(
                      width: width,
                      text: 'Docker Docs',
                      url: 'https://docs.docker.com',
                    ),
                    LinkText(
                      width: width,
                      text: 'Git Docs',
                      url: 'https://git-scm.com/doc',
                    ),
                    LinkText(
                      width: width,
                      text: 'Google Cloud',
                      url: 'https://cloud.google.com/docs',
                    ),
                    LinkText(
                      width: width,
                      text: 'QuickLabs',
                      url: ' https://www.qwiklabs.com',
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                DevelopmentHeading(
                  width: width,
                  title: 'Code Editors & IDEs',
                  logo: 'assets/code-editor.png',
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    LinkText(
                      width: width,
                      text: 'VS Code',
                      url: 'https://code.visualstudio.com',
                    ),
                    LinkText(
                      width: width,
                      text: 'Atom',
                      url: 'https://atom.io',
                    ),
                    LinkText(
                      width: width,
                      text: 'Brackets',
                      url: 'http://brackets.io',
                    ),
                    LinkText(
                      width: width,
                      text: 'Sublime',
                      url: 'https://www.sublimetext.com',
                    ),
                    LinkText(
                      width: width,
                      text: 'Android Studio',
                      url: 'https://developer.android.com/studio',
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  final String text;
  final String url;
  final double width;

  const LinkText({Key key, this.text, this.url, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () async {
            if (await canLaunch(url)) {
              launch(url);
            } else {
              print('can\'t launch url');
            }
          },
          child: Padding(
            //  padding: const EdgeInsets.only(top: 8.0, left: 25.0),
            // padding: const EdgeInsets.only(top: 8.0, left: 25.0),
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.5 * 0.2, vertical: 8.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DevelopmentHeading extends StatelessWidget {
  final String title;
  final String logo;
  final double width;
  // final Color color;

  const DevelopmentHeading({
    Key key,
    this.title,
    this.logo,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          child: Image.asset(logo),
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.green,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
