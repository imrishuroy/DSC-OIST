import 'package:flutter/material.dart';

class DomainBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      curve: Curves.easeIn,
      child: Row(
        children: [
          TweenAnimationBuilder(
            curve: Curves.ease,
            child: Container(
              margin: EdgeInsets.only(left: 25.0),
              height: 220,
              width: 10,
              color: Colors.blue,
            ),
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 800),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
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
      duration: Duration(milliseconds: 500),
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
        TweenAnimationBuilder(
            child: Row(
              children: [
                TweenAnimationBuilder(
                    child: Container(
                      margin: EdgeInsets.only(left: 25.0),
                      height: 5,
                      // width: 100,
                      width: 20,
                      color: color,
                    ),
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Container(
                          child: child,
                          width: value * 165,
                        ),
                      );
                    }),
                SizedBox(width: 20.0),
                Text(
                  domainTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CabinSketch',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1,
                  ),
                )
              ],
            ),
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 2),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            }),
        SizedBox(height: 20.0),
      ],
    );
  }
}
