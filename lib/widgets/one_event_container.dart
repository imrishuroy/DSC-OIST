import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OneEventContainer extends StatelessWidget {
  const OneEventContainer({
    Key key,
    @required this.youtubeLink,
    @required this.imageUrl,
    @required this.date,
    this.redTextLevel,
    this.fontSize,
  }) : super(key: key);

  final youtubeLink;
  final imageUrl;
  final date;
  final bool redTextLevel;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            if (await canLaunch(youtubeLink)) {
              launch(youtubeLink);
            } else {
              print('cant launch url');
            }
          },
          child: Container(
            margin: EdgeInsets.all(15.0),
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: Colors.white70, width: 0.7),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageUrl,
                ),
              ),
            ),
          ),
        ),
        Text(
          date,
          style: TextStyle(
            color: redTextLevel == true ? Colors.red : Colors.white,
            fontSize: fontSize == null ? 14.0 : fontSize,
          ),
        ),
        SizedBox(
          height: 7.0,
        ),
        Container(
          width: 50.0,
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
