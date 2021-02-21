import 'package:dsc_oist/widgets/build_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SolutionChallange extends StatelessWidget {
  static String routeName = '/solution-challange';
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
                          'RSVP to the upcoming events and view past event recordings.'),
                  SizedBox(height: 15.0),
                  BuildOneSolutionItem(
                      title:
                          'Overview of the Solution Challenge 2021 by Global Program Manager.'),
                  SizedBox(height: 15.0),
                  BuildOneSolutionItem(
                    title:
                        'Learn how you can come up with the ideas for the challenge.',
                  ),
                  SizedBox(height: 15.0),
                  BuildOneSolutionItem(
                    title: 'Example Project for Solution Challenge.',
                  ),
                  SizedBox(height: 15.0),
                  BuildOneSolutionItem(
                      title:
                          'Learn more about the Sustainable Development Goals here'),
                  SizedBox(height: 30.0),
                  Text(
                    'Learn how to design a project from scratch :-',
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
                        color: Colors.green,
                      ),
                      SizedBox(height: 17.0),
                      _buildNumberedText(
                        title: '2. IDENTIFYING A SOLUTION',
                        color: Colors.orange,
                      ),
                      SizedBox(height: 17.0),
                      _buildNumberedText(
                        title: '3. DESIGNING THE INTERFACE',
                        color: Colors.blue,
                      ),
                      SizedBox(height: 17.0),
                      _buildNumberedText(
                        title: '4. DESIGNING THE TECHNOLOGY ',
                        color: Color(0xffe40017),
                      ),
                      SizedBox(height: 25.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dowload the complete PDF',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'OpenSans',
                                color: Color(0xffd3e0ea),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.picture_as_pdf,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
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

  const BuildOneSolutionItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Row(
        children: [
          Icon(
            Icons.radio_button_checked,
            color: Colors.pink,
          ),
          SizedBox(width: 10.0),
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
