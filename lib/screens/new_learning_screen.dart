import 'package:flutter/material.dart';
import '../data/learning_data.dart';
import 'package:url_launcher/url_launcher.dart';

class NewLearningScreen extends StatelessWidget {
  static String routeName = 'new-learning-screen';
  final _controller = PageController(initialPage: 1);

  void urlLauncher(url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      print('Can\'t launch url');
    }
  }

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
            child: PageView(
              controller: _controller,
              children: [
                LearningCard(
                  title: 'Android Development',
                  icon: 'assets/images/android.png',
                  titleColor: Colors.green,
                  domain: android,
                ),
                LearningCard(
                  title: 'iOS Development',
                  icon: 'assets/images/apple.png',
                  titleColor: Colors.black,
                  domain: ios,
                ),
                LearningCard(
                  title: 'Flutter Development',
                  icon: 'assets/images/flutter.png',
                  titleColor: Colors.blue,
                  domain: flutter,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LearningCard extends StatelessWidget {
  final String title;
  final String icon;
  final Color titleColor;
  final List domain;

  const LearningCard({
    Key key,
    this.title,
    this.icon,
    this.titleColor,
    this.domain,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            children: [
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(icon),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: titleColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Android is every where there are 130 billion android devices',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // SizedBox(
              //   width: 70.0,
              //   child: Divider(
              //     color: Colors.grey,
              //   ),
              // ),
              Expanded(
                //flex: 1,
                child: ListView.builder(
                  // addAutomaticKeepAlives: false,
                  //  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  itemCount: domain.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                      child: GestureDetector(
                        onTap: () {
                          print(android[index].values);
                          launch(domain[index]['link']);
                        },
                        child: Card(
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 15.0),
                            child: Column(
                              children: [
                                Text(
                                  '${domain[index]['data']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'AverialLibre',
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  domain[index]['about'] ?? '',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // IconButton(
        //   padding: EdgeInsets.only(right: 15.0),
        //   icon: Icon(
        //     Icons.keyboard_arrow_right_outlined,
        //     size: 60.0,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {},
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    50.0,
                  ),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.navigate_before,
                size: 50.0,
                color: Colors.black54,
              ),
            ),
            Container(
              width: 50.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    50.0,
                  ),
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
              child: Icon(
                Icons.navigate_next,
                size: 50.0,
                color: Colors.black54,
              ),
            ),
          ],
        )
      ],
    );
  }
}
