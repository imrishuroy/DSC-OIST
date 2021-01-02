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
                ),
                LearningCard(
                  title: 'iOS Development',
                  icon: 'assets/images/apple.png',
                  titleColor: Colors.black,
                ),
                LearningCard(
                  title: 'Flutter Development',
                  icon: 'assets/images/flutter.png',
                  titleColor: Colors.blue,
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

  const LearningCard({Key key, this.title, this.icon, this.titleColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Expanded(
                //flex: 1,
                child: ListView.builder(
                  itemCount: android.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          print(android[index].values);
                          launch(android[index]['link']);
                        },
                        child: Card(
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '${android[index]['data']}',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 17.0),
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
        IconButton(
          icon: Icon(
            Icons.arrow_right,
            size: 60.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
