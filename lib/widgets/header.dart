import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 6.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 80,
              child: Image.asset(
                'assets/dsc-logo.png',
                //  fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Text(
              'DSC OIST',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 40,
              ),
              // textAlign: TextAlign.center,
            ),
            SizedBox(width: 10),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                'Powered By Google Developers',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 22),
        // Text(
        //   'Every Community That Ever Existed , Started With Sharing',
        //   style: TextStyle(
        //     color: Colors.deepOrange,
        //     fontWeight: FontWeight.w600,
        //     fontSize: 18,
        //   ),
        //   textAlign: TextAlign.center,
        // ),
        // SizedBox(height: 22),
      ],
    );
  }
}

// Card(
//   margin: EdgeInsets.all(10),
//   color: Colors.orange,
//   child: Padding(
//     padding: const EdgeInsets.all(18.0),
//     child: Text(
//       'Every Community That Ever Existed , Started With Sharing',
//       textAlign: TextAlign.center,
//     ),
//   ),
// )
