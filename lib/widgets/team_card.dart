import 'dart:io';

import 'package:dsc_oist/widgets/show_alert.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamCardItems extends StatelessWidget {
  final String name;
  final String designation;
  final String imageUrl;
  final String instaUrl;
  final String linkdinUrl;

  const TeamCardItems(
      {Key key,
      this.name,
      this.designation,
      this.imageUrl,
      this.instaUrl,
      this.linkdinUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    // print('width $width');
    // print(height);
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Card(
        color: Colors.white70,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Padding(
              // padding: EdgeInsets.symmetric(
              //   horizontal: width * 0.1 - 2.0,
              // ),
              padding: EdgeInsets.only(
                left: width * 0.1 - 2.0,
                right: width * 0.1 - 2.0,
              ),
              child: CircleAvatar(
                radius: 48.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'AverialLibre',
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              designation,
              style: TextStyle(fontSize: 14.0),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.linkedin),
                  onPressed: () {
                    launchUrl(linkdinUrl);
                  },
                ),
                IconButton(
                    icon: Icon(FontAwesomeIcons.instagram),
                    onPressed: () {
                      launchUrl(instaUrl);
                    }),
              ],
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

launchUrl(url) async {
  try {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      showAlertDialog(
        title: 'Could not connect to server',
        content: 'Check your internet connection and try again',
        defaultActionText: 'OK',
      );
    }
  } on SocketException catch (_) {
    showAlertDialog(
      title: 'Could not connect to server',
      content: 'Check your internet connection and try again',
      defaultActionText: 'OK',
    );
  }
}
