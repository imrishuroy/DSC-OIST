import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomAppBarButtons extends StatelessWidget {
  final String url;
  final IconData icon;
  BottomAppBarButtons({@required this.url, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      onPressed: () async {
        if (await canLaunch(url)) {
          launch(url);
        } else {
          throw 'Can\'t lauch $url';
        }
      },
      icon: Icon(icon),
    );
  }
}
