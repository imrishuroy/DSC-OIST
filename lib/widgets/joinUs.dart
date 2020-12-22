import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Oriental Instiute Of Science And Technology',
          style: TextStyle(
            color: Colors.white,
            //fontFamily: 'Raleway',
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        RaisedButton(
          // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7.0),
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          onPressed: () async {
            String url =
                // 'https://accounts.google.com/o/oauth2/auth/identifier?redirect_uri=https%3A%2F%2Fdsc.community.dev%2Faccounts%2Fgoogle%2Flogin%2Fcallback%2F&access_type=offline&client_id=857409878587-im3f0si9p11h41a6aeiil7cs37frkubb.apps.googleusercontent.com&response_type=code&scope=profile%20email&state=yNgreI3NxYTg&flowName=GeneralOAuthFlow';
                'https://dsc.community.dev/oriental-institute-of-science-and-technology/';
            if (await canLaunch(url)) {
              launch(url);
            } else {
              throw 'Can\'t lauch $url';
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: Text(
              'Join Us',
              style: TextStyle(
                fontSize: 18,
                //fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
