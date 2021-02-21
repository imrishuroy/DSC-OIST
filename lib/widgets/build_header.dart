import 'package:flutter/material.dart';

class BuildSolutionHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 225.0,
            width: double.infinity,
            child: Image.asset(
              'assets/solution.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 23.0,
              vertical: 12.0,
            ),
            child: Text(
              'The 2021 Solution Challenge mission is to solve for one or more of the United Nations 17 Sustainable Development Goals using Google technology.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Icon(
              //   Icons.radio_button_checked,
              //   color: Colors.pink,
              // ),
              SizedBox(width: 20.0),
              Text(
                'Register Here...',
                style: TextStyle(
                  fontSize: 23.0,
                  color: Colors.blue,
                  fontFamily: 'Harmattan',
                ),
              ),
              SizedBox(width: 24.0),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
