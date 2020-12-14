import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamCardItems extends StatelessWidget {
  final String name;
  final String designation;
  final String imageUrl;

  const TeamCardItems({Key key, this.name, this.designation, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    // print('width $width');
    // print(height);
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Card(
        color: Colors.white70,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.1 - 10,
              ),
              child: CircleAvatar(
                radius: 48.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              name,
              style: GoogleFonts.averiaLibre(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              designation,
              style: TextStyle(fontSize: 14.0),
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.inbox), onPressed: () {}),
                IconButton(icon: Icon(Icons.inbox), onPressed: () {}),
              ],
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
