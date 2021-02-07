import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showAlertDialog({
  BuildContext context,
  @required String title,
  @required String content,
  @required String defaultActionText,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(defaultActionText),
        )
      ],
    ),
  );
}

Future<void> aboutDialog({
  BuildContext context,
  @required String about,
  @required String avatar,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      // title: Icon(Icons.access_alarm),
      title: TweenAnimationBuilder(
          child: Container(
            height: 40.0,
            width: 20.0,
            child: Image.asset(avatar),
          ),
          tween: Tween(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 600),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Container(
                height: value * 70,
                width: value * 30,
                child: Image.asset(avatar),
              ),
            );
          }),
      content: Text(
        about,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'AverialLibre'),
      ),
    ),
  );
}
