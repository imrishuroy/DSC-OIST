import 'package:dsc_oist/widgets/build_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SolutionChallange extends StatelessWidget {
  static String routeName = '/solution-challange';
  void _urlLauncher(url) async {
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
      body: Column(
        children: [
          BuildSolutionHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BuildOneSolutionItem(
                    title:
                        'RSVP to the upcoming events and view past event recordings.',
                    link: 'http://dsc.community.dev/2021-solution-challenge',
                  ),
                  SizedBox(height: 20.0),
                  BuildOneSolutionItem(
                    title:
                        'Overview of the Solution Challenge 2021 by Global Program Manager.',
                    link: 'https://youtu.be/LExFrzxCUuo',
                  ),
                  SizedBox(height: 20.0),
                  BuildOneSolutionItem(
                    title:
                        'Learn how you can come up with ideas for the challenge.',
                    link: 'https://youtu.be/50QQ6ksr8FE',
                  ),
                  SizedBox(height: 20.0),
                  BuildOneSolutionItem(
                    title: 'Example Project for Solution Challenge.',
                    link: 'https://youtu.be/Wkaz5uw0Evo',
                  ),
                  SizedBox(height: 20.0),
                  BuildOneSolutionItem(
                    title:
                        'Learn more about the Sustainable Development Goals here',
                    link:
                        'https://developers.google.com/community/dsc-solution-challenge/UN-goals',
                  ),
                  SizedBox(height: 35.0),
                  Text(
                    '* Learn how to design a project from scratch :-',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xfff9f871),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildNumberedText(
                        title: '1. IDENTIFYING A PROBLEM',
                        color: Color(0xfff14668),
                      ),
                      SizedBox(height: 17.0),
                      _buildNumberedText(
                        title: '2. IDENTIFYING A SOLUTION',
                        color: Colors.blue,
                      ),
                      SizedBox(height: 17.0),
                      _buildNumberedText(
                        title: '3. DESIGNING THE INTERFACE',
                        color: Color(0xff16c79a),
                      ),
                      SizedBox(height: 17.0),
                      _buildNumberedText(
                        title: '4. DESIGNING THE TECHNOLOGY',
                        color: Color(0xffff7b54),
                      ),
                      SizedBox(height: 25.0),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 23.0,
                          vertical: 10.0,
                        ),
                        child: Text(
                          '* How to participate :-',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      _participatePoints(title: 'Join a DSC near you'),
                      SizedBox(height: 20.0),
                      _participatePoints(
                          title: 'Form a team of up to 4 members'),
                      SizedBox(height: 20.0),
                      _participatePoints(title: 'Select a SDG'),
                      SizedBox(height: 20.0),
                      _participatePoints(title: 'Work on the solution'),
                      SizedBox(height: 20.0),
                      _participatePoints(title: 'Design the front end'),
                      SizedBox(height: 20.0),
                      _participatePoints(title: 'Design the backend'),
                      SizedBox(height: 20.0),
                      _participatePoints(
                          title: 'Upload your solution with a demo video'),
                      SizedBox(height: 25.0),
                      _buildLinkRow(
                        title: 'Watch our intro video',
                        icon: FontAwesomeIcons.youtube,
                        link: 'https://www.youtube.com/watch?v=-HAWM-qksw0',
                      ),
                      _buildLinkRow(
                          title: 'Dowload the complete PDF',
                          icon: Icons.picture_as_pdf,
                          link:
                              'https://drive.google.com/file/d/119AgP1VQceJFHjCrYI-mxK9UjqKjRk-W/view?usp=sharing'),
                      SizedBox(height: 25.0),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildLinkRow({String title, IconData icon, String link}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'OpenSans',
              color: Color(0xffd3e0ea),
            ),
          ),
          IconButton(
            icon: Icon(
              icon,
              color: Colors.red,
            ),
            onPressed: () => _urlLauncher(link),
          )
        ],
      ),
    );
  }

  Padding _buildNumberedText({String title, Color color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.5,
          color: color,
          fontFamily: 'NunitoSans',
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class BuildOneSolutionItem extends StatelessWidget {
  final String title;
  final String link;
  final IconData icon;

  const BuildOneSolutionItem({
    Key key,
    this.title,
    this.link,
    this.icon: Icons.open_in_new_rounded,
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
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              icon,
              color: Colors.pink,
            ),
            onPressed: () => _urlLauncher(link),
          ),
          SizedBox(width: 23.0),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _participatePoints({String title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 23.0),
    child: Row(
      children: [
        Icon(
          //Icons.radio_button_checked,
          Icons.radio_button_checked,
          color: Colors.pink,
        ),
        SizedBox(width: 23.0),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
