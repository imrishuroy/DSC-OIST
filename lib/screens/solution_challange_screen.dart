import 'package:dsc_oist/widgets/build_header.dart';
import 'package:flutter/material.dart';

class SolutionChallange extends StatelessWidget {
  static String routeName = '/solution-challange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 37, 46, 1),
      body: Column(
        children: [
          BuildSolutionHeader(),
        ],
      ),
    );
  }
}
