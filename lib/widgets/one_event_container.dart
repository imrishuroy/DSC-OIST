import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OneEventContainer extends StatelessWidget {
  const OneEventContainer({
    Key key,
    @required this.youtubeLink,
    @required this.imageUrl,
    @required this.date,
  }) : super(key: key);

  final youtubeLink;
  final imageUrl;
  final date;

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
              border: Border.all(),
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
          style: TextStyle(color: Colors.white),
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
