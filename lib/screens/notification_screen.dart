import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dsc_oist/widgets/one_notification_card.dart';
import 'package:flutter/material.dart';

// const List notificationData = [
//   {
//     'data': '30 days of Flutter',
//     'link': 'http://goo.gle/30daysofflutter',
//     'logo':
//         'https://raw.githubusercontent.com/imrishuroy/Images/main/flutter.png',
//     'about': 'Kickstart your journey with 30 days of flutter',
//   },
//   {
//     'data': 'Google Cloud',
//     'link': 'https://cloud.google.com/training',
//     'logo': 'https://raw.githubusercontent.com/imrishuroy/Images/main/gcp.png',
//     'about': 'Codelabs for 30 days Cloud Challange',
//   },
// ];

class NotificationScreen extends StatelessWidget {
  static String routeName = '/notification-screen';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          FirebaseFirestore.instance.collection('notifications').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Color.fromRGBO(25, 37, 46, 1),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        var _notificationLength = snapshot.data.docs.length;
        return Scaffold(
          backgroundColor: Color.fromRGBO(25, 37, 46, 1),
          appBar: AppBar(
            title: TweenAnimationBuilder(
              curve: Curves.easeIn,
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.0,
                ),
              ),
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 600),
              builder: (context, value, child) {
                return Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: value * 25.0,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: value * 1.5,
                  ),
                );
              },
            ),
            centerTitle: true,
            backgroundColor: Colors.white30,
            actions: [
              CircleAvatar(
                radius: 13.5,
                backgroundColor: Colors.white70,
                child: Text(
                  '${_notificationLength == null ? '' : _notificationLength}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 20.0),
            ],
            bottom: PreferredSize(
              child: Container(),
              preferredSize: Size.fromHeight(10.0),
            ),
          ),
          body:
              //  StreamBuilder(
              //   stream: FirebaseFirestore.instance
              //       .collection('notifications')
              //       .snapshots(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return Center(
              //         child: CircularProgressIndicator(),
              //       );
              //     }
              //     return
              ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index) {
              final imageUrl = snapshot.data.docs[index]['imageUrl'];
              final title = snapshot.data.docs[index]['title'];
              final subTitle = snapshot.data.docs[index]['subTitle'];
              final link = snapshot.data.docs[index]['link'];
              final date = snapshot.data.docs[index]['date'];

              return Column(
                children: [
                  // SizedBox(height: 5.0),
                  OneNotificationCard(
                    imageUrl: imageUrl,
                    date: date,
                    link: link,
                    title: title,
                    subTitle: subTitle,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
