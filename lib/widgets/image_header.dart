import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ImageHeader({Key key, this.imageUrl, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 37.0,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Raleway',
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
