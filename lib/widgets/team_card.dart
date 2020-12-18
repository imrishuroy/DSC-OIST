import 'dart:io';
import 'package:dsc_oist/widgets/show_alert.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String designation;
  final String instaUrl;
  final String linkdInUrl;

  const TeamCard(
      {Key key,
      this.name,
      this.imageUrl,
      this.designation,
      this.instaUrl,
      this.linkdInUrl})
      : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.white70,
        child: Column(
          children: [
            SizedBox(height: 17.0),
            CircleAvatar(
              radius: 49.0,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 45.0,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'AverialLibre',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              designation,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.linkedin),
                  onPressed: () {
                    launchUrl(linkdInUrl);
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.instagram),
                  onPressed: () {
                    launchUrl(instaUrl);
                  },
                )
              ],
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
