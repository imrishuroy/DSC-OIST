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
      title: Container(
        height: 70.0,
        width: 20.0,
        child: Image.asset(avatar),
      ),
      content: Text(
        about,
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'AverialLibre'),
      ),
    ),
  );
}
