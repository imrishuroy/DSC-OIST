import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget eventContainer({String imageUrl, String date, String eventLink}) {
  return Column(
    children: [
      InkWell(
        onTap: () async {
          if (await canLaunch(eventLink)) {
            launch(eventLink);
          } else {
            throw 'Can\'t lauch $eventLink';
          }
        },
        child: Container(
          margin: EdgeInsets.all(20.0),
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/$imageUrl',
              ),
            ),
          ),
        ),
      ),
      Text(
        date,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
    ],
  );
}
