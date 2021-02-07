import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OneNotificationCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String link;
  final String date;

  const OneNotificationCard({
    Key key,
    @required this.imageUrl,
    @required this.title,
    @required this.subTitle,
    @required this.link,
    @required this.date,
  }) : super(key: key);

  void _urlLauncher(url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      print('Can\'t launch url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xfff7f7e8),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 15),
              leading: CircleAvatar(
                backgroundColor: Color(0xff394867),
                radius: 27.0,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              subtitle: Text(
                subTitle,
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.open_in_new,
                  color: Color(0xff394867),
                ),
                onPressed: () => _urlLauncher(link),
              ),
            ),
          ),
          Positioned(
            left: -10.0,
            top: -4.0,
            child: Transform(
              child: Card(
                color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: SizedBox(
                    height: 15,
                    width: 50,
                    child: Text(
                      date,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
              alignment: FractionalOffset.center,
              transform: new Matrix4.identity()..rotateZ(-15 * 3.1415927 / 180),
            ),
          )
        ],
      ),
    );
  }
}
