import 'package:flutter/material.dart';

class DomainBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.bounceInOut,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25.0),
            height: 220,
            width: 10,
            color: Colors.blue,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DomainRow(
                domainTitle: 'App Dev',
                color: Colors.red,
              ),
              DomainRow(
                domainTitle: 'Web Dev',
                color: Colors.yellow,
              ),
              DomainRow(
                domainTitle: 'DSA / CP',
                color: Colors.deepPurple,
              ),
              DomainRow(
                domainTitle: 'DevOps',
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(seconds: 2),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.all(value * 20),
            child: child,
          ),
        );
      },
    );
  }
}

class DomainRow extends StatelessWidget {
  final String domainTitle;
  final Color color;

  const DomainRow({Key key, this.domainTitle, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 25.0),
              height: 5,
              width: 100,
              color: color,
            ),
            SizedBox(width: 20.0),
            Text(
              domainTitle,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'AverialLibre',
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
