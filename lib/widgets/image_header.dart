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
              fit: BoxFit.cover,
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            // vertical: 37.0,
            vertical: 20.0,
          ),
          child: TweenAnimationBuilder(
            curve: Curves.easeInOut,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Raleway',
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
            duration: Duration(milliseconds: 600),
            tween: Tween(begin: 0.0, end: 1.0),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: value * 20),
                  child: child,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
