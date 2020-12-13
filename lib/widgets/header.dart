import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 100,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'DSC OIST',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Powered By Google Developers',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
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
