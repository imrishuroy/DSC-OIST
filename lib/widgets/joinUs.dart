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
            fontSize: 16.0,
          ),
        ),
        FlatButton(
          onPressed: () async {
            String url =
                'https://accounts.google.com/o/oauth2/auth/identifier?redirect_uri=https%3A%2F%2Fdsc.community.dev%2Faccounts%2Fgoogle%2Flogin%2Fcallback%2F&access_type=offline&client_id=857409878587-im3f0si9p11h41a6aeiil7cs37frkubb.apps.googleusercontent.com&response_type=code&scope=profile%20email&state=yNgreI3NxYTg&flowName=GeneralOAuthFlow';
            if (await canLaunch(url)) {
              launch(url);
            } else {
              throw 'Can\'t lauch $url';
            }
          },
          child: Text(
            'Join Us',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
