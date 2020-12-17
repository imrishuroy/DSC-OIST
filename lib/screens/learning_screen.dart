import 'package:dsc_oist/widgets/image_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class LearningScreen extends StatelessWidget {
  static String routeName = 'LearningScreen';
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
                          text: 'Official Site',
                          url: 'https://developer.android.com',
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
                          text: 'Android Study Jam',
                          url: 'https://cutt.ly/ChKMbQo',
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
                          text: 'Official Site',
                          url: 'https://developer.android.com',
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
                          text: 'Android Study Jam',
                          url: 'https://cutt.ly/ChKMbQo',
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
                          text: 'Official Site',
                          url: 'https://developer.android.com',
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
                          text: 'Android Study Jam ',
                          url: 'https://cutt.ly/ChKMbQo',
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
                      text: 'Oficial Site',
                      url: 'https://cutt.ly/ChKMbQo',
                    ),
                    LinkText(
                      width: width,
                      text: 'Flaviocopes',
                      url: 'https://cutt.ly/ChKMbQo',
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
                          'CP RoadMap',
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
                              print('tapped');
                            })
                      ],
                    ),
                    LinkText(
                      width: width,
                      text: 'Flaviocopes',
                      url: 'https://cutt.ly/ChKMbQo',
                    ),
                    LinkText(
                      width: width,
                      text: 'Traversy Media Youtube',
                      url: 'https://cutt.ly/ChKMbQo',
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
                              print('tapped');
                            })
                      ],
                    ),
                    LinkText(
                      width: width,
                      text: 'CSS Tricks',
                      url: 'https://cutt.ly/ChKMbQo',
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                DevelopmentHeading(
                  width: width,
                  title: 'DevOps',
                  logo: 'assets/images/devops.png',
                ),
                SizedBox(height: 10.0),
                Column(
                  children: [
                    LinkText(
                      width: width,
                      text: 'Oficial Site',
                      url: 'https://cutt.ly/ChKMbQo',
                    ),
                    LinkText(
                      width: width,
                      text: 'Flaviocopes',
                      url: 'https://cutt.ly/ChKMbQo',
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
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class ImageHeader extends StatelessWidget {
//   // final String imageUrl;
//   // final String titleText;

//   // const ImageHeader({Key key, this.imageUrl, this.titleText}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: 240,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage('assets/learning.jpg'),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 24.0,
//             vertical: 34.0,
//           ),
//           child: Text(
//             'Learning Resourses',
//             style: TextStyle(
//               fontSize: 30.0,
//               color: Colors.white,
//               fontWeight: FontWeight.w800,
//               fontFamily: 'Raleway',
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

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

  const DevelopmentHeading({Key key, this.title, this.logo, this.width})
      : super(key: key);

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
