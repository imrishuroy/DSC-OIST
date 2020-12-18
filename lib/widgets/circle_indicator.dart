import 'package:flutter/material.dart';

class CircleIndicator extends StatefulWidget {
  static String routeName = 'newApp';
  @override
  _CircleIndicatorState createState() => _CircleIndicatorState();
}

class _CircleIndicatorState extends State<CircleIndicator>
    with TickerProviderStateMixin {
  AnimationController animationController;
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: new Duration(seconds: 1), vsync: this);
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: animationController
            .drive(ColorTween(begin: Colors.blue, end: Colors.red)),
      ),
    );
  }
}
