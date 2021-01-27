import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const List notificationData = [
  {
    'data': '30 days of Flutter',
    'link': 'http://goo.gle/30daysofflutter',
    'logo':
        'https://raw.githubusercontent.com/imrishuroy/Images/main/flutter.png',
    'about': 'Kickstart your journey with 30 days of flutter',
  },
  {
    'data': 'Google Cloud',
    'link': 'https://cloud.google.com/training',
    'logo': 'https://raw.githubusercontent.com/imrishuroy/Images/main/gcp.png',
    'about': 'Check Google Cloud Codelabs for 30 days Cloud Challange',
  },
];

class NotificationScreen extends StatelessWidget {
  static String routeName = '/notification-screen';

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
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: 'Raleway',
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white30,
        actions: [
          CircleAvatar(
            radius: 13.5,
            backgroundColor: Colors.white70,
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
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
      body: Column(
        children: [
          // _buildNotificationHeader(),
          SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: notificationData.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Color(0xfff7f7e8),
                    // color: Color(0xffdff6f0),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(13.0),
                      leading: CircleAvatar(
                        // backgroundColor: Colors.black12,
                        //  backgroundColor: Color(0xffeeeeee),
                        backgroundColor: Color(0xff394867),
                        radius: 27.0,
                        // backgroundImage: NetworkImage(
                        //     notificationData[index]['logo'],
                        //     ),
                        child: Image.network(
                          notificationData[index]['logo'],
                          fit: BoxFit.cover,
                          //fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        notificationData[index]['data'],
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      subtitle: Text(
                        notificationData[index]['about'],
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.open_in_new,
                          color: Color(0xff394867),
                        ),
                        onPressed: () {
                          urlLauncher(notificationData[index]['link']);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

//   Widget _buildNotificationHeader() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Notifications',
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   fontFamily: 'Raleway',
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                   letterSpacing: 1.1,
//                 ),
//               ),
//               CircleAvatar(
//                 radius: 15.5,
//                 backgroundColor: Colors.red,
//                 child: Text(
//                   '5',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         Text(
//           '"Get to know everyting happing in DSC OIST. Happy Learning"',
//           style: TextStyle(
//             fontSize: 17.0,
//             color: Colors.white,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }
// // 9977684401
// // Color(0xff394867)
