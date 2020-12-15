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
